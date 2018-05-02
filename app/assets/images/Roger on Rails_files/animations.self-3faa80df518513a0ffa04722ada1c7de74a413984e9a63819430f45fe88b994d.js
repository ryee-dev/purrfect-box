window.onload = function() {
    typeAnimation();
};

function typeAnimation() {
    $('h1').forEach(function(h1) {
        let len = h1.textContent.length,
            s = h1.style;

        s.width = len + 'ch';
        s.animationTimingFunction = "steps("+ s.len +"), steps(1)";
    });
};
