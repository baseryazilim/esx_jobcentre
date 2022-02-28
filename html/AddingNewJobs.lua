Created by KurlieDino



To add more jobs - first thing you need to do is dupilcate the script in LUA, Javascript, CSS and HTML.


--LUA--

Client Side main:

Underneath: 

RegisterNUICallback("jobsix", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setjobsix')
end)

Copy and paste this code but change the jobname, for example:

RegisterNUICallback("jobseven", function(data)
    SetDisplay(false)
    SetNuiFocus(false,false)
    TriggerServerEvent('esx_jobcentre:setjobseven')
end)

--You can add as many as you like but make sure it goes up in numbers: jobseven, jobeight, jobnine etc 

--This will be easier to follow.


Server side main: 

Underneath:

--Job Six
RegisterServerEvent('esx_jobcentre:setjobsix')
AddEventHandler('esx_jobcentre:setjobsix', function(job)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.setJob('ambulance', 0)
end)

Copy and paste and change six to seven. Repeat for the amount of jobs you want.


--Javascript --


In html/jobjs.jobs

Underneath: 

    $('#jobsix').click(function(){
        _type = "jobsix";
        $.post(`http://esx_jobcentre/jobsix`, JSON.stringify({type : _type}));
        return
    });

Copy and paste again - changing the number to seven. Repeat for as many jobs as you want. 

For example: 

    $('#jobseven').click(function(){
        _type = "jobseven";
        $.post(`http://esx_jobcentre/jobseven`, JSON.stringify({type : _type}));
        return
    });

--Tips: The #jobsix' = the button on your html 
        The http://esx_jobcentre/jobsix = the lua script to connect them. Make sure these always line up



--HTML--

This is more complicated.

In html/jobui

You will notice this: 

        <img src="img/jobone.png" style="width: 200px;height: 210px;margin-top: 0px;margin-left: 35px;"/>
        <img src="img/jobtwo.png" style="width: 200px;height: 210px;margin-top: 0px;margin-left: 50px;"/>
        <img src="img/jobthree.png" style="width: 200px;height: 210px;margin-top: 0px;margin-left: 50px;"/>
        <button id="jobone" class="jobone" type="button">Select</button>
        <button id="jobtwo" class="jobtwo" type="button">Select</button>
        <button id="jobthree" class="jobthree" type="button">Select</button>

--This is your first line of jobs.

1-3. To create new jobs - Copy from the first img to the last button of the line. 

Place this under the last line of jobs. For example:

Copy img jobone to button jobthree. Place this AFTER button job six. Then change the job name to seven:

        <button id="jobfour" class="jobfour" type="button">Select</button>
        <button id="jobfive" class="jobfive" type="button">Select</button>
        <button id="jobsix" class="jobsix" type="button">Select</button>
        <img src="img/jobseven.png" style="width: 200px;height: 210px;margin-top: 5px;margin-left: 35px;"/>
        <img src="img/jobeight.png" style="width: 200px;height: 210px;margin-top: 5px;margin-left: 50px;"/>
        <img src="img/jobnine.png" style="width: 200px;height: 210px;margin-top: 5px;margin-left: 50px;"/>
        <button id="jobseven" class="jobfour" type="button">Select</button>
        <button id="jobeight" class="jobfive" type="button">Select</button>
        <button id="jobnine" class="jobsix" type="button">Select</button>

--Then you can add more:

        <img src="img/jobseven.png" style="width: 200px;height: 210px;margin-top: 5px;margin-left: 35px;"/>
        <img src="img/jobeight.png" style="width: 200px;height: 210px;margin-top: 5px;margin-left: 50px;"/>
        <img src="img/jobnine.png" style="width: 200px;height: 210px;margin-top: 5px;margin-left: 50px;"/>
        <button id="jobseven" class="jobnine" type="button">Select</button>
        <button id="jobeight" class="jobnine" type="button">Select</button>
        <button id="jobnine" class="jobnine" type="button">Select</button>
        <img src="img/jobten.png" style="width: 200px;height: 210px;margin-top: 5px;margin-left: 35px;"/>
        <img src="img/jobeleven.png" style="width: 200px;height: 210px;margin-top: 5px;margin-left: 50px;"/>
        <img src="img/jobtwelve.png" style="width: 200px;height: 210px;margin-top: 5px;margin-left: 50px;"/>
        <button id="jobten" class="jobten" type="button">Select</button>
        <button id="jobeleven" class="jobeleven" type="button">Select</button>
        <button id="jobtwelve" class="jobtwelve" type="button">Select</button>

--This can go on forever.

THEN you need to go into your CSS

--CSS--

Copy and paste from any first job line (jobone, jobfour, job seven) they go up in three's. To the last job line (job three, job six, jobnin etc)

And paste. Make sure to change the name to the correct job.





Hopefully this makes sense, this one will come with 9 jobs. You can do the opposite of what is explained if you want to decrease the jobs.

Enjoy! <3