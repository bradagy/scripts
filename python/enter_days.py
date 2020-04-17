#!/usr/bin/env python3

# Takes user input for any amount of days and adds them
# to the current date

# Example below.
# "Enter any number of days: "
# If you enter the number 10, the date 10 days from now will be
# calculated for you.

import datetime
from datetime import timedelta

add_days = int(input('Enter any number of days: '))
future_date = datetime.date.today() + datetime.timedelta(add_days)
print('The future date will be {}.'.format(future_date))
