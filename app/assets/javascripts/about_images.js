var gaby_image_src = {
    topleft: "https://s3.amazonaws.com/TechWomen.us/gaby2.jpg",
    topright: "https://s3.amazonaws.com/TechWomen.us/gaby3.jpg",
    bottomleft: "https://s3.amazonaws.com/TechWomen.us/gaby4.jpg",
    bottomright: "https://s3.amazonaws.com/TechWomen.us/gaby5.jpg"
};

var chantal_image_src = {
    topleft: "https://s3.amazonaws.com/TechWomen.us/chantal_yoga.jpg",
    topright: "https://s3.amazonaws.com/TechWomen.us/chantal_halloween.jpg",
    bottomleft: "https://s3.amazonaws.com/TechWomen.us/chantalfishing.jpg",
    bottomright: "https://s3.amazonaws.com/TechWomen.us/chantalgoogle"
};

$(document).mousemove(function(event){
var wid = $(".chantal_thumb").width();
console.log("width is" + wid);
console.log("event is" + event);
    var mloc = {
        x: event.pageX,
        y: event.pageY
    };

    console.log("x is " + mloc.x);
    console.log("y is " + mloc.y);
    if(
        (mloc.x >= 0 && mloc.x <= $(".chantal_thumb").width()/2) &&
        (mloc.y >= 0 && mloc.y <= $(".chantal_thumb").height()/2)
    ){
        $(".chantal_thumb").attr("src", chantal_image_src.topleft);
    }else if(
        (mloc.x >= $(".chantal_thumb").width()/2 && mloc.x <= $(".chantal_thumb").width()) &&
        (mloc.y >= 0 && mloc.y <= $(".chantal_thumb").height()/2)
    ){
        $(".chantal_thumb").attr("src", chantal_image_src.topright);
    }else if(
        (mloc.x >= 0 && mloc.x <= $(".chantal_thumb").width()/2) &&
        (mloc.y >= $(".chantal_thumb").height()/2 && mloc.y <= $(".chantal_thumb").height())
    ){
        $(".chantal_thumb").attr("src", chantal_image_src.bottomleft);
    }else if(
        (mloc.x >= $(".chantal_thumb").width()/2 && mloc.x <= $(".chantal_thumb").width()) &&
        (mloc.y >= $(".chantal_thumb").height()/2 && mloc.y <= $(".chantal_thumb").height())
    ){
        $(".chantal_thumb").attr("src", chantal_image_src.bottomright);
    }

});

