echo "WELCOME TO THE USER REGISTRATION PROGRAM"

firstName()
{
read -p "ENTER THE FIRST NAME : " fname
pat="^[A-Z]{1}[a-z]{2,}$"
if [[ $fname =~ $pat ]];
then
	echo "VALID ";
else
	echo "NOTVALID"
	firstName
fi
}

lastName()
{
read -p "ENTER THE LAST NAME : " lname
pat="^[A-Z]{1}[a-z]{2,}$"
if [[ $lname =~ $pat ]];
then
	echo "VALID ";
else
	echo "INVALID LASTNAME";
	lastName
fi
}

EmailAddress()
{
read -p "ENTER THE EMAIL ADDRESS : " EMAIL
pat="^[a-z]{3,}([.]{1}[0-9a-zA-Z]{3,})?@[a-zA-Z]{2}[.]{1}([a-z]{2})+[.]?([a-zA-Z]{2})?$"
if [[ $EMAIL =~ $pat ]];
then
	echo "VALID ";
else
	echo "INVALID EMAIL ADDRESS";
	EmailAddress
fi
PhoneNumber()
{
read -p "ENTER THE PHONE NUMBER : " PHONE
pat="^([+]{1}[0-9]{2,3})[ ][0-9]{10}$"
if [[ $PHONE =~ $pat ]];
then
	echo "VALID ";
else
	echo "INVALID PHONE NUMBER";
	PhoneNumber
fi
}
PassWord()
{
read -p "ENTER THE PASSWORD : " PASSWORD

if [[ ${#PASSWORD} -ge 8 && "$PASSWORD" == *[[:upper:]]* && "$PASSWORD" == *[[:digit:]]* && "$PASSWORD" != *[[:space:]]* ]]
	then
		if [[ $PASSWORD == *[[:punct:]]* ]]
			then
				echo "VALID ";
		else
			echo "INVALID PASSWORD ";
			PassWord
		fi
else
	echo "INVALID PASSWORD ";
	PassWord
fi
}
}

firstName
lastName
EmailAddress
PhoneNumber
PassWord
