<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
<style>
            .nav-bar{
                display: block;
                background-color: whitesmoke;
            }
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: whitesmoke;
              }
              
              li {
                float: right;
              }
              
              li a {
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
              }

              li a:hover{
                background-color:#088F8F;
              }
              .active {
                background-color:#088F8F;
              }
            .contact{
                padding: 50px 50px 50px 50px;
                background-color: lightgray;
                border: 1px solid black;
            }
            html {
                font: 300 100%/1.5 Ubuntu, sans-serif;
                color: #333;
                overflow-x: hidden;
              }
              h2 {
                margin: 0;
                color: #8495a5;
                font-size: 2.5em;
                font-weight: 300;
              }
              #contact-form {
                max-width: 1208px;
                max-width: 75.5rem;
                margin: 0 auto;
              }
              #contact, label, input[name="submit"] {
                position: relative;
              }
              label > span, input, textarea, button {
                box-sizing: border-box;
              }
              label {
                display: block;
              }
              label > span {
                display: none;
              }
              input, textarea, button {
                width: 100%;
                padding: 0.5em;
                border: none;
                font: 300 100%/1.2 Ubuntu, sans-serif;
              }
              input[type="text"], input[type="email"], textarea {
                margin: 0 0 1em;
                border: 1px solid #ccc;
                outline: none;
              }
              input.invalid, textarea.invalid {
                border-color: #d5144d;
              }
              textarea {
                height: 6em;
              }
              input[type="submit"], button {
                background: #a7cd80;
                color: #333;
              }
              input[type="submit"]:hover, button:hover {
                background: #91b36f;
              }
              @media screen and (min-width: 30em) {
                #contact-form h2 {
                  margin-left: 26.3736%;
                  font-size: 2em;
                  line-height: 1.5;
                }
                label > span {
                  vertical-align: top;
                  display: inline-block;
                  width: 26.3736%;
                  padding: 0.5em;
                  border: 1px solid transparent;
                  text-align: right;
                }
                input, textarea, button {
                  width: 73.6263%;
                  line-height: 1.5;
                }
                textarea {
                  height: 10em;
                }
                input[type="submit"], button {
                  margin-left: 26.3736%;
                }
              }
              @media screen and (min-width: 48em) {
                #contact-form {
                  text-align: justify;
                  line-height: 0;
                }
                #contact-form:after {
                  content: '';
                  display: inline-block;
                  width: 100%;
                }
                #contact-form h2 {
                  margin-left: 17.2661%;
                }
                #contact-form form, #contact-form aside {
                  vertical-align: top;
                  display: inline-block;
                  width: 65.4676%;
                  text-align: left;
                  line-height: 1.5;
                }
                #contact-form aside {
                  width: 30.9353%;
                }
              }
              .firstclass{
                display: block;
                background-color: #702963;
                padding: 50px 50px 50px 50px;
            }
            .firstclass h1,p {
                color: white;
            }
        </style>
</head>
<body>
 <div class="nav-bar">
            <ul>
                <li><a href="/adminlogin">Admin Login</a></li>
                <li><a  href="/contact">Contact</a></li>
                <li ><a href="/">Home</a></li>
              </ul>
           </div>
        <div class="firstclass">
        <h1>Contact us</h1>
        <p>We love questions and feedback-and we're always happy to help!</p>
        <p>Here are some ways to contact us</p>
        </div>
        <div class="contact">
            <h2>Send us a message</h2>
            <p>Send us a message and we'll respond within 24 hours.</p>
            <div align="center">
                <section id="contact-form">
                    <form id="contact" name="contact" accept-charset="utf-8">
                      <label><span>Name</span><input name="name" type="text" placeholder="Name"/></label>
                      <label><span>Email</span><input name="email" type="email" placeholder="Email"/></label>
                      <label><span>Message</span><textarea name="message" placeholder="Message"></textarea></label>
                      <input name="submit" type="submit" value="Send"/>
                    </form>
                  </section>
            </div>
        </div>
        <script>
            var form = $('#contact'),
    submit = form.find('[name="submit"]');

form.on('submit', function(e) {
  e.preventDefault();
  
  // avoid spamming buttons
  if (submit.attr('value') !== 'Send')
    return;
  
  var valid = true;
  form.find('input, textarea').removeClass('invalid').each(function() {
    if (!this.value) {
      $(this).addClass('invalid');
      valid = false;
    }
  });
  
  if (!valid) {
    form.animate({left: '-3em'},  50)
        .animate({left:  '3em'}, 100)
        .animate({left:    '0'},  50);
  } else {
    submit.attr('value', 'Sending...')
          .css({boxShadow: '0 0 200em 200em rgba(225, 225, 225, 0.6)',
                backgroundColor: '#ccc'});
    // simulate AJAX response
    setTimeout(function() {
      // step 1: slide labels and inputs
      // when AJAX responds with success
      // no animation for AJAX failure yet
      form.find('label')
          .animate({left: '100%'}, 500)
          .animate({opacity: '0'}, 500);
    }, 1000);
    setTimeout(function() {
      // step 2: show thank you message after step 1
      submit.attr('value', 'Thank you :)')
            .css({boxShadow: 'none'});
    }, 2000);
    setTimeout(function() {
      // step 3: reset
      form.find('input, textarea').val('');
      form.find('label')
          .css({left: '0'})
          .animate({opacity: '1'}, 500);
      submit.attr('value', 'Send')
            .css({backgroundColor: ''});
    }, 4000);
  }
});
        </script>
</body>
</html>