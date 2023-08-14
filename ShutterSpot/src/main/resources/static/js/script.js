console.log('Script.js Loaded');

window.addEventListener('load', function(e) {
	console.log('Page Loaded');
	init();
});

function init() {

	loadShutterSpots();
	        document.getElementById("totalSpots").textContent = `Total Spots: ${spotList.length}`;


	document.getElementById('deleteSpot').addEventListener('click', function() {
		let spotId = document.getElementById('editSpotId').value;

		if (!spotId) {
			alert('Please search for a spot to delete first!');
			return;
		}

		let confirmation = confirm('Are you sure you want to delete this spot?');
		if (confirmation) {
			deleteSpotById(spotId);
		}
	});


	document.querySelector('form[name="editSpotForm"] button[name="save"]').addEventListener('click', function(event) {
		event.preventDefault();
		console.log(document.editSpotForm.name.value)
		let spotId = document.editSpotForm.id.value;
		let spotToUpdate = {
			id: spotId,
			name: document.editSpotForm.name.value,
			address: document.editSpotForm.address.value,
			city: document.editSpotForm.city.value,
			state: document.editSpotForm.state.value,
		};

		updateSpot(spotToUpdate);
	});



	document.getElementById('startEdit').addEventListener('click', function() {
		let spotId = document.getElementById('editSpotId').value;
		if (spotId) {
			editSpot(spotId);
		} else {
			console.log('Please provide a valid spot ID.');
		}
	});
	// This is the bootstrap "tooltip" initializer that needs to be in the intit()
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl)
    });
}

function loadShutterSpots() {
	let xhr = new XMLHttpRequest();
	xhr.open('GET', 'api/photospot');
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {
				let spots = JSON.parse(xhr.responseText);
				displaySpotList(spots);
				console.log(spots);
			}
		} else {
			// DISPLAY ERROR ON PAGE 
			//MAYBE DO NOTHING?
		}
	};

	xhr.send();
}
function displaySpot(newSpot) {
	let dataDiv = document.getElementById('spotData');
	dataDiv.innerHTML = `
	<h3>Shutter Spot Name: ${newSpot.name}<br></h3>
	<ul>
	<td>Shutter Spot Address: ${newSpot.address}<br></td>
	<td>Shutter Spot City: ${newSpot.city}<br></td>
	<td>Shutter Spot State: ${newSpot.state}<br></td>
	</ul>
	`;
}


function displaySpotList(spotList) {
    if (spotList && Array.isArray(spotList)) {
        let tbody = document.getElementById("spotTableBody");
        
        // Display total number of spots
        document.getElementById("totalSpots").textContent = `Total Spots: ${spotList.length}`;

        for (let spot of spotList) {
            let tr = document.createElement('tr');
            
            let tdId = document.createElement('td');
            tdId.textContent = spot.id;
            tr.appendChild(tdId);
            
            let tdName = document.createElement('td');
            tdName.textContent = spot.name;
            
            // Tooltip for additional details
            tdName.setAttribute('data-bs-toggle', 'tooltip');
            tdName.setAttribute('data-bs-placement', 'right');  
            tdName.setAttribute('title', `Address: ${spot.address}\nCity: ${spot.city}\nState: ${spot.state}`);
            
            tr.appendChild(tdName);
            
            tbody.appendChild(tr);
        }
    }
}





function createSpot(newSpot) {
	let xhr = new XMLHttpRequest;
	xhr.open('POST', 'api/photospots');

	xhr.setRequestHeader('Content-Type', 'application/json');

	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 201) {
				let newSpot = JSON.parse(xhr.responseText);
				console.log('Spot Created: ', newSpot);

				displaySpot(newSpot);

			} else {
				console.error('There was an error in creating the spot.');
			}

		}
	};
	console.log(newSpot);
	xhr.send(JSON.stringify(newSpot));
};



function editSpot(id) {
	let xhr = new XMLHttpRequest();
	xhr.open('GET', 'api/photospots/' + id);
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {  // Changed from 201 to 200
				let spot = JSON.parse(xhr.responseText);
				console.log('Spot to Edit: ', spot);
				showEditForm(spot);
			}
		}
	};
	xhr.send();
}


function showEditForm(spot) {
	document.editSpotForm.id.value = spot.id;
	document.editSpotForm.name.value = spot.name;
	document.editSpotForm.address.value = spot.address;
	document.editSpotForm.city.value = spot.city;
	document.editSpotForm.state.value = spot.state;
	console.log('***********************' + spot.id);
}



function updateSpot(spotToUpdate) {
	let xhr = new XMLHttpRequest();
	xhr.open('PUT', 'api/photospots/' + spotToUpdate.id);
	xhr.setRequestHeader('Content-Type', 'application/json');
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 200) {
				console.log('Spot Updated Successfully');
				// You can handle any post-update actions here.
			}
			else {
				console.error('Error updating the spot.');
			}
		}
	};
	xhr.send(JSON.stringify(spotToUpdate));
}

function deleteSpotById(spotId) {
	let xhr = new XMLHttpRequest();
	xhr.open('DELETE', 'api/photospots/' + spotId);
	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4) {
			if (xhr.status === 204) {
				alert('Spot deleted successfully');
				
				document.getElementById('editSpotId').value = '';
				document.getElementById('editName').value = '';
				document.getElementById('editAddress').value = '';
				document.getElementById('editCity').value = '';
				document.getElementById('editState').value = '';
			} else {
				alert('Error deleting the spot.');
			}
		}
	};
	xhr.send();
}


