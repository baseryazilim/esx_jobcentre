$(function () {
    function display(bool) {
        var item = event.data;

        if (bool) {
            $(".fullscreen").show();
        } else {
            $(".fullscreen").hide();
            

        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post(`http://esx_jobcentre/exit`, JSON.stringify({}));
            return
        }
    };


    $('#ambulance').click(function(){
        _type = "ambulance";
        $.post(`http://esx_jobcentre/ambulance`, JSON.stringify({type : _type}));
        return
    });
    $('#banker').click(function(){
        _type = "banker";
        $.post(`http://esx_jobcentre/banker`, JSON.stringify({type : _type}));
        return
    });
    $('#cardealer').click(function(){
        _type = "cardealer";
        $.post(`http://esx_jobcentre/cardealer`, JSON.stringify({type : _type}));
        return
    });
    $('#fisherman').click(function(){
        _type = "fisherman";
        $.post(`http://esx_jobcentre/fisherman`, JSON.stringify({type : _type}));
        return
    });
    $('#fueler').click(function(){
        _type = "fueler";
        $.post(`http://esx_jobcentre/fueler`, JSON.stringify({type : _type}));
        return
    });
    $('#lumberjack').click(function(){
        _type = "lumberjack";
        $.post(`http://esx_jobcentre/lumberjack`, JSON.stringify({type : _type}));
        return
    });
    $('#mechanic').click(function(){
        _type = "mechanic";
        $.post(`http://esx_jobcentre/mechanic`, JSON.stringify({type : _type}));
        return
    });
    $('#miner').click(function(){
        _type = "miner";
        $.post(`http://esx_jobcentre/miner`, JSON.stringify({type : _type}));
        return
    });
    $('#police').click(function(){
        _type = "police";
        $.post(`http://esx_jobcentre/police`, JSON.stringify({type : _type}));
        return
    });
    $('#realestateagent').click(function(){
        _type = "realestateagent";
        $.post(`http://esx_jobcentre/realestateagent`, JSON.stringify({type : _type}));
        return
    });
    $('#reporter').click(function(){
        _type = "reporter";
        $.post(`http://esx_jobcentre/reporter`, JSON.stringify({type : _type}));
        return
    });
    $('#slaughterer').click(function(){
        _type = "slaughterer";
        $.post(`http://esx_jobcentre/slaughterer`, JSON.stringify({type : _type}));
        return
    });
    $('#tailor').click(function(){
        _type = "tailor";
        $.post(`http://esx_jobcentre/tailor`, JSON.stringify({type : _type}));
        return
    });
    $('#taxi').click(function(){
        _type = "taxi";
        $.post(`http://esx_jobcentre/taxi`, JSON.stringify({type : _type}));
        return
    });
    $('#cleaner').click(function(){
        _type = "cleaner";
        $.post(`http://esx_jobcentre/cleaner`, JSON.stringify({type : _type}));
        return
    });
    $('#delivery').click(function(){
        _type = "delivery";
        $.post(`http://esx_jobcentre/delivery`, JSON.stringify({type : _type}));
        return
    });
    $('#garbage').click(function(){
        _type = "garbage";
        $.post(`http://esx_jobcentre/garbage`, JSON.stringify({type : _type}));
        return
    });
    $('#gardener').click(function(){
        _type = "gardener";
        $.post(`http://esx_jobcentre/gardener`, JSON.stringify({type : _type}));
        return
    });
    $('#technician').click(function(){
        _type = "technician";
        $.post(`http://esx_jobcentre/technician`, JSON.stringify({type : _type}));
        return
    });
    $('#unemployed').click(function(){
        _type = "unemployed";
        $.post(`http://esx_jobcentre/unemployed`, JSON.stringify({type : _type}));
        return
    });

})


