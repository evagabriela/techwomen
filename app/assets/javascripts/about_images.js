var gaby_image_src = {
    topleft: "gaby2.jpg",
    topright: "gaby3.jpg",
    bottomleft: "gaby4.jpg",
    bottomright: "gaby5.jpg"
};

$(.gaby_thumb).mousemove(function(event){
    var mloc = {
        x: event.pageX,
        y: event.pageY
    };

    if(
        (mloc.x >= 0 && mloc.x <= $(.gaby_thumb).width()/2) &&
        (mloc.y >= 0 && mloc.y <= $(.gaby_thumb).height()/2)
    ){
        $(".gaby_thumb").attr("src", gaby_image_src.topleft);
    }else if(
        (mloc.x >= $(.gaby_thumb).width()/2 && mloc.x <= $(.gaby_thumb).width()) &&
        (mloc.y >= 0 && mloc.y <= $(.gaby_thumb).height()/2)
    ){
        $(".gaby_thumb").attr("src", gaby_image_src.topright);
    }else if(
        (mloc.x >= 0 && mloc.x <= $(.gaby_thumb).width()/2) &&
        (mloc.y >= $(.gaby_thumb).height()/2 && mloc.y <= $(.gaby_thumb).height())
    ){
        $(".gaby_thumb").attr("src", gaby_image_src.bottomleft);
    }else if(
        (mloc.x >= $(.gaby_thumb).width()/2 && mloc.x <= $(.gaby_thumb).width()) &&
        (mloc.y >= $(.gaby_thumb).height()/2 && mloc.y <= $(.gaby_thumb).height())
    ){
        $(".gaby_thumb").attr("src", gaby_image_src.bottomright);
    }

});

