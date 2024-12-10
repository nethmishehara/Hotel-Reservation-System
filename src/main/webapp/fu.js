/**
 * 
 */
 function validation() {
            let email = document.querySelector('input[name="email"]').value;
            let username = document.querySelector('input[name="username"]').value;
            let subject = document.querySelector('input[name="subject"]').value;
            let additionalDetail = document.querySelector('input[name="additionalDetail"]').value;
            let errorMessage = document.getElementById('error-message');

            if (!email || !username || !subject || !additionalDetail) {
                errorMessage.style.display = 'block';
                return false;
            } else {
                errorMessage.style.display = 'none';
                return true;
            }
        }