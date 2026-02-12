window.addEventListener('message', function(event) {
    const paymentUI = document.getElementById('payment-ui');
    const amountValueElement = document.getElementById('amount-value');

    if (event.data.type === 'showUI') {
        paymentUI.style.display = 'flex';

        animateAmount(0, event.data.amount, 1000, (value) => {
            amountValueElement.textContent = event.data.text + value.toFixed(2);
        });

        window.paymentData = { amount: event.data.amount, id: event.data.id, args: event.data.args };
    } else if (event.data.type === 'hideUI') {
        paymentUI.style.display = 'none';
    }

    if (event.data.type === 'playCustomSound') {
        var soundPlayer = document.getElementById('soundPlayer');
        var soundPath = 'sounds/' + event.data.sound + '.ogg';
        var duration = event.data.duration;
        var volume = event.data.volume || 1.0;
        var hasPlayed = false;
    
        soundPlayer.pause();
        soundPlayer.currentTime = 0;
        soundPlayer.oncanplaythrough = null;
        soundPlayer.onerror = null;
        soundPlayer.src = soundPath;
        soundPlayer.volume = volume;
    
        soundPlayer.oncanplaythrough = function() {
            if (!hasPlayed) {
                soundPlayer.play().catch(error => {
                    console.error('Playback error:', error);
                });
                hasPlayed = true;
                if (duration && !isNaN(duration) && duration > 0) {
                    setTimeout(() => {
                        soundPlayer.pause();
                        soundPlayer.currentTime = 0;
                    }, duration * 1000);
                }
            }
        };
    
        soundPlayer.onerror = function() {
            console.error('Failed to load sound:', soundPath);
        };
    }
});

function animateAmount(start, end, duration, callback) {
    const startTime = performance.now();

    function updateAmount(currentTime) {
        const elapsedTime = currentTime - startTime;
        const progress = Math.min(elapsedTime / duration, 1);
        const currentAmount = start + (end - start) * progress;

        callback(currentAmount);

        if (progress < 1) {
            requestAnimationFrame(updateAmount);
        }
    }

    requestAnimationFrame(updateAmount);
}

function handlePayment(method) {
    fetch('https://fivecode_burgershotjob/processPayment', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
            method: method,
            amount: window.paymentData.amount,
            id: window.paymentData.id,
            args: window.paymentData.args
        })
    });
    document.getElementById('payment-ui').style.display = 'none';
}

document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') {
        document.getElementById('payment-ui').style.display = 'none';
        fetch('https://fivecode_burgershotjob/hideUI', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' }
        });
    }
});

document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') {
        document.getElementById('payment-ui').style.display = 'none';
        fetch('https://fivecode_burgershotjob/closeMenu', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ focus: false, cursor: false })
        });
    }
});

document.addEventListener("DOMContentLoaded", () => {
    const menuBoard = document.getElementById('menu-board');
    const whiteboard = document.querySelector('.whiteboard');

    const handleMenuToggle = (isOpen, menuItems = []) => {
        if (isOpen) {
            whiteboard.classList.remove('fade-out');
            whiteboard.style.visibility = 'visible';
            whiteboard.classList.add('spin-in');
            document.body.style.cursor = 'auto';

            menuBoard.innerHTML = '';

            const categories = menuItems.reduce((acc, item) => {
                const category = item.category || 'Uncategorized';
                if (!acc[category]) acc[category] = [];
                acc[category].push(item);
                return acc;
            }, {});

            Object.keys(categories).forEach(category => {
                const categoryTitle = document.createElement('h2');
                categoryTitle.textContent = category;
                menuBoard.appendChild(categoryTitle);

                categories[category].forEach(item => {
                    const listItem = document.createElement('li');

                    const itemImage = document.createElement('img');
                    itemImage.src = item.image;
                    listItem.appendChild(itemImage);

                    const itemText = document.createElement('span');
                    itemText.className = 'item-text';
                    itemText.textContent = item.title;
                    listItem.appendChild(itemText);

                    const itemPrice = document.createElement('span');
                    itemPrice.className = 'item-price';
                    const priceMatch = item.description.match(/\$([0-9]+(\.[0-9]{1,2})?)/);
                    itemPrice.textContent = priceMatch ? priceMatch[0] : 'N/A';
                    listItem.appendChild(itemPrice);

                    menuBoard.appendChild(listItem);
                });
            });
        } else {
            whiteboard.classList.add('fade-out');
            setTimeout(() => {
                whiteboard.style.visibility = 'hidden';
                document.body.style.cursor = 'none';
            }, 700);
        }

        window.dispatchEvent(new MessageEvent('message', {
            data: { type: "setNuiFocus", focus: isOpen }
        }));
    };

    window.addEventListener('message', (event) => {
        const { type, menuItems } = event.data;

        if (type === "openMenu") {
            handleMenuToggle(true, menuItems);
        } else if (type === "closeMenu") {
            handleMenuToggle(false);
        }
    });

    document.addEventListener('keydown', (event) => {
        if (event.key === 'Escape') {
            window.dispatchEvent(new MessageEvent('message', {
                data: { type: "closeMenu" }
            }));

            fetch('https://fivecode_burgershotjob/closeMenu', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ focus: false, cursor: false })
            });
        }
    });
});