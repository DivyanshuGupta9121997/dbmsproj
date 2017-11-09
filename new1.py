import smtplib
import random
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

def mail(msg,email):
    fromemail='divyanshuguptadg1997@gmail.com'
    password='divyazgupta!1!1'
    subject="Verification code"
    message=handleemail(msg,subject)
    ser=smtplib.SMTP('smtp.gmail.com',587)
    ser.ehlo()
    ser.starttls()
    ser.login(str(fromemail),str(password))
    ser.sendmail(str(fromemail),[str(fromemail),str(email)],message.as_string())
    ser.close()


def handleemail(msg,subject):
	message=MIMEMultipart()
	message['Subject']=subject
	part1=MIMEText(str(msg),'plain')
	message.attach(part1)
	return message

i=random.randint(100000,999999)

mail('Enter it to complete the signup . The Verification code is ' + str(i) ),"divyanshu.gupta.cse15@itbhu.ac.in")