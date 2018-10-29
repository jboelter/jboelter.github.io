#!/bin/bash

jq "{ race: (.[0].event_full_name | ltrimstr(\"River City Bicycles Cyclocross Crusade: \")), results: [ .[] | select(.race_name|test(\"Runners|Junior .* 3/4/5\")|not) | {number, place, name, team: .team_name, cat: (.race_name | gsub(\"Category \";.race_name))}]}" <(curl http://obra.org/events/25897/results.json) > alpenrose-day-1
jq "{ race: (.[0].event_full_name | ltrimstr(\"River City Bicycles Cyclocross Crusade: \")), results: [ .[] | select(.race_name|test(\"Runners|Junior .* 3/4/5\")|not) | {number, place, name, team: .team_name, cat: (.race_name | gsub(\"Category \";.race_name))}]}" <(curl http://obra.org/events/25898/results.json) > alpenrose-day-2
jq "{ race: (.[0].event_full_name | ltrimstr(\"River City Bicycles Cyclocross Crusade: \")), results: [ .[] | select(.race_name|test(\"Runners|Junior .* 3/4/5\")|not) | {number, place, name, team: .team_name, cat: (.race_name | gsub(\"Category \";.race_name))}]}" <(curl http://obra.org/events/25900/results.json) > pir-heron-lakes
jq "{ race: (.[0].event_full_name | ltrimstr(\"River City Bicycles Cyclocross Crusade: \")), results: [ .[] | select(.race_name|test(\"Runners|Junior .* 3/4/5\")|not) | {number, place, name, team: .team_name, cat: (.race_name | gsub(\"Category \";.race_name))}]}" <(curl http://obra.org/events/26068/results.json) > cascade-locks

