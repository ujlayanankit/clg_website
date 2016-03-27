/*
function subLoad(){
	var url1 = "subject.jsp";
	alert(url1);
	
    $.ajax({
    	
        url: url1,
        context: document.body,
        success: function(html){   
        	alert("adf");
            $("#selectSubject").html(html)
            alert(html);
        }
    });

}*/



function addRow() {
	
	var ITS = document.getElementById("InpTotalSection");
	var ITSdata = ITS.options[ITS.selectedIndex].value;
		
	var table = document.getElementById("myTableData");
	var x = table.rows.length;
	//alert(x);
	for(; x>1; x--)
	{
		table.deleteRow(1);
	}
	var myTableDiv = document.getElementById("myDynamicTable");
    var tableBody = document.createElement('TBODY');
    table.appendChild(tableBody);
    var sec = ["A","B","C","D","E"];
	var td = new Array();
	for (var i=0; i<ITSdata; i++){
    var tr = document.createElement('TR');
    tableBody.appendChild(tr);
		for(var j=0;j<4;j++)
		{
        td[j] = document.createElement('TD');
        var newdiv = document.createElement('div');
		if(j==0)
		{
		newdiv.innerHTML = '<label for="section'+sec[i]+'">'+sec[i]+'</label>';
		}
		else
		{
		newdiv.innerHTML = '<input type="number" class="form-control" id=\"tabin'+ sec[i]+''+j +'\" placeholder="0" name="" required>';
		}
		newdiv.id = "tab"+sec[i];
		td[j].appendChild(newdiv);
		tr.appendChild(td[j]);
	}
    }
    myTableDiv.appendChild(table);
 }



function selSub(){
	var selSub = document.getElementById("examSubjects");
	var sub = selSub.options[selSub.selectedIndex].value;
	document.getElementById("selectedSubject").innerHTML = sub;
	
} 

function markMax(){
	var getMark = document.getElementById("InpMaxMarks").value;
	//alert(getMark);
	document.getElementById("selectedMark").innerHTML = getMark;
}