#!/bin/bash

cat > telegraf.conf <<EOL
# Configuration to add to telegraf.conf
[[inputs.mqtt_consumer]]
  servers = ["tcp://mqtt-2.omnivoltaic.com:1883"]
  topics = ["#"]
  data_format = "json_v2"

  [[inputs.mqtt_consumer.json_v2]]
    measurement_name = "mqtt_consumer"
    measurement_name_path = ""
    timestamp_path = ""
    timestamp_format = "2006-1-2 15:04:05"
    timestamp_timezone = "UTC"

    # Attributes
    [[inputs.mqtt_consumer.json_v2.field]]
      path = "att.opid"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "att.ppid"
      rename = "PAYG Device ID"
      type = "string"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "att.flid"
      rename = "Fleet ID"
      type = "string"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "att.frmv"
      rename = "Firmware Version"
      type = "string"

    [[inputs.mqtt_consumer.json_v2.tag]]
      path = "att"
      rename = "Attributes"

    # Commands
    [[inputs.mqtt_consumer.json_v2.field]]
      path = "cmd.gstw"
      rename = "GPRS Sleep Time Window"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "cmd.gctw"
      rename = "GPRS Connect Time Window"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "cmd.napn"
      rename = "GPRS Carrier APN Name and Passcode"
      type = "string"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "cmd.swch"
      rename = "Generic Device Switch"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "cmd.read"
      rename = "Last Read Request"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "cmd.rptm"
      rename = "Set Notification Request"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "cmd.hbfq"
      rename = "Heart Beat"
      type = "int"

    # Status
    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.sstc"
      rename = "System Status Code"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.crtm"
      rename = "created at time"
      type = "string"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.udtm"
      rename = "update at time"
      type = "string"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.plat"
      rename = "Device GPS Latitude"
      type = "float"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.plon"
      rename = "Device GPS Longitude"
      type = "float"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.gpss"
      rename = "GPS Signal Strength in db"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.gpfc"
      rename = "GPRS Connect Failure Counts"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.rcrd"
      rename = "Remaining Credit Days"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.trhd"
      rename = "Total Running History Days"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.tpgd"
      rename = "PAYG Running Days"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.pgst"
      rename = "PAYG State"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.tkre"
      rename = "Token Request"
      type = "string"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "sts.ocst"
      rename = "Device Output State"
      type = "int"

    # Data
    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.batp"
      rename = "Battery Net Charging Power"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.inpp"
      rename = "Total Input Power W"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.outp"
      rename = "Output Power W"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.aeng"
      rename = "Accumulated Energy Output in Whs"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.pckv"
      rename = "Pack Voltage mV"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.pckc"
      rename = "Pack Current in mA"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.rsoc"
      rename = "Relative State of Charge"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.rcap"
      rename = "Remaining Capacity in Whs"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.fccp"
      rename = "Full Charge Capacity in Whs"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.pckt"
      rename = "Pack Temperature in Celsius"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dta.acyc"
      rename = "Accumulated Cycles"
      type = "int"

    # Diagnostics
    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv01"
      rename = "Cell 01 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv02"
      rename = "Cell 02 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv03"
      rename = "Cell 03 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv04"
      rename = "Cell 04 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv05"
      rename = "Cell 05 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv06"
      rename = "Cell 06 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv07"
      rename = "Cell 07 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv08"
      rename = "Cell 08 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv09"
      rename = "Cell 09 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv10"
      rename = "Cell 10 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv11"
      rename = "Cell 11 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv12"
      rename = "Cell 12 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv13"
      rename = "Cell 13 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv14"
      rename = "Cell 14 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv15"
      rename = "Cell 15 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv16"
      rename = "Cell 16 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv17"
      rename = "Cell 17 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv18"
      rename = "Cell 18 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv19"
      rename = "Cell 19 Voltage"
      type = "int"

    [[inputs.mqtt_consumer.json_v2.field]]
      path = "dia.cv20"
      rename = "Cell 20 Voltage"
      type = "int"

## Optional: If you want to explicitly specify string fields in the output, you can use the following:
# json_string_fields = ["att.opid", "att.ppid", "att.flid", "att.frmv", "cmd.pubk", "cmd.napn", "sts.crtm", "sts.udtm", "sts.time", "dta.sstm"]
# # Configuration for sending metrics to InfluxDB
[[outputs.influxdb_v2]]
  ## The URLs of the InfluxDB cluster nodes.
  ##
  ## Multiple URLs can be specified for a single cluster, only ONE of the
  ## urls will be written to each interval.
  ##   ex: urls = ["https://us-west-2-1.aws.cloud2.influxdata.com"]
  urls = ["http://influxdb:8086"]

  ## Token for authentication.
  token = "72634f97852549cf138c59fe330001efb6d8d63004f069bb30c2955bb540e434"

  ## Organization is the name of the organization you wish to write to; must exist.
  organization = "oves"

  ## Destination bucket to write into.
  bucket = "telegraf"

EOL

echo "InfluxDB configuration file generated in telegraf.conf"
