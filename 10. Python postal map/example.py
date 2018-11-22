# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#if __name__ == "__main__":
#    print ("Hello World")
    
#for in
#if in
#this is "self"

#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""from dbfread import DBF

table = DBF('db.dbf', encoding="utf-8")

count = 0
print(len(table)) # 13404 of lines

for record in table:
    print(record)
    count = count + 1
    if count == 5:
        break
    #else: continue"""
    
#OrderedDict([
#('DATAUTTAKS', '20180307102107'), - "duomen? gavyba"??
#('KOMMUNENUM', '0219'), "rajono numeris"??
#('KVALITET  ', '55 1500'), 
#('LOKALID   ', '5e9f2808-e36c-4079-9a31-f52da7d1a680'), 
#('NAVNEROM  ', '"http://skjema.geonorge.no/SOSI/produktspesifikasjon/Postnummeromrader/20180215"'), 
#('OBJTYPE   ', 'Postnummeromrade'), 
#('OPPDATERIN', ''), 
#('OPPHAV    ', '"Posten Norge/Kartverket"'), 
#('POSTNUMMER', '1339'), "pasto numeris (rajone)"??
#('POSTSTED  ', 'VoYENENGA'), 
#('REF       ', ':-71380 :-71377 :-71379 :-71378 :-70939 :-48365 :-66486 :-70629 :-1 :-55324 :-55325 :-64607 :-36246 :960 :19083 :962 :-36903'), 
#('SOSI_ID   ', '72489'), 
# "koordinates????"
#('TYPE      ', 'FLATE'), 
#('VERSJONID ', '20180215')])
    
import geopandas as gpd

map = gpd.read_file("db.shp")
print(map.length) # 13404 of lines
#print(type(data))
#print(map.head())
#this is going to lag! be fore-warned
#not sure how the colors got chosen, but I like the variety 
#best viewed as exported picture and zoomed in a lot, although pixelation does kick in at certain level
map.plot(figsize=(250,250), color='white', edgecolor='black', linewidth=0.1, cmap='tab20')
