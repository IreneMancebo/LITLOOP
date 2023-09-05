$(document).on('click', '#capture-button', function () {
  navigator.mediaDevices.getUserMedia({ video: true })
    .then(function (stream) {
      const videoElement = document.getElementById('camera-preview');
      videoElement.srcObject = stream;
    })
    .catch(function (error) {
      console.error('Error accessing camera:', error);
    });
});
