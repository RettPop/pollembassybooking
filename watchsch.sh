#!/bin/bash
curl -s "https://online.mfa.gov.ua/api/v1/queue/consulates/56/schedule?date=2020-09-08&dateEnd=2020-10-18&serviceId=905" | sed 's/,/\n/g' | grep "date" | sed 's/{"date":"//' | sed 's/\[//' | sed 's/"//' | sort
