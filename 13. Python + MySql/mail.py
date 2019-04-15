import mysql.connector
import smtplib  
import string
# import yagmail

mydb = mysql.connector.connect(
  host="localhost",
  user="Viktoras",
  passwd="abc12345",
  database="sakila"
)

# print(mydb.connection_id) 

mycursor = mydb.cursor()
mycursor.execute(
  "select A.TAIL_NUMBER as 'Tail number',"
  " M.MODEL_NUMBER as 'Model number',"
  " M.DESCRIPTION as 'Model description',"
  " C.COMPANY_NAME as 'Company name',"
  " CC.CODE as 'Country code',"
  " CC.COUNTRY_NAME as 'Country name'"
  " from sakila.aircraft as A"
  " join sakila.model as M on A.MDL_AUTO_KEY = M.MDL_AUTO_KEY"
  " join sakila.companies as C on A.CMP_OWNER = C.CMP_AUTO_KEY"
  " join sakila.country_codes as CC on C.COC_AUTO_KEY = CC.COC_AUTO_KEY"
  " where CC.SDF_COC_003 in ('F');")
myresult = mycursor.fetchall()

totalresult = '<table style="border: 1px solid black; background-color: #f780b4">'

for x in myresult:
  totalresult += '<tr>' + '<td>' + x[0] + '</td>' + '<td>' + x[1] + '</td>' + '<td>' + x[2] + '</td>' + '<td>' + x[3] + '</td>' + '<td>' + x[4] + '</td>' + '<td>' + x[5] + '</td>' + '</tr>' #0-5

totalresult += '</table>'

# a8f7f4

SMTPserver = "smtp.mailtrap.io:2525"

To = 'vikanonymous@hotmail.com'
From = "vikanonymous@hotmail.com"
Subj = "test"

Body = "From: %s \n" % From + "To: %s \n" % To + "Subject: %s \n" % Subj + "" + totalresult + "\r\n"
print(Body)

s = smtplib.SMTP(SMTPserver)
s.starttls()
s.login('1ba080977450d6', '9ab4ef25c25749')

s.sendmail(From,[To],Body)

s.quit()

# SMTP
# Host: smtp.mailtrap.io
# Port: 25 or 465 or 2525
# Username: 1ba080977450d6
# Password: 9ab4ef25c25749
# Auth: PLAIN, LOGIN and CRAM-MD5
# TLS: Optional
