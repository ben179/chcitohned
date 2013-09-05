package chcitohned

import com.chcitohned.domain.Geopoint
import groovy.json.JsonSlurper


class GeocodeService {

    final def GEOCODE_JSON_URL = "http://maps.googleapis.com/maps/api/geocode/json"

    public Geopoint findByAddress(String address) {
        def queryBuilder = []
        queryBuilder << "address=${URLEncoder.encode(address)}"
        queryBuilder << "sensor=false"
        def queryString = queryBuilder.join("&")
        def requestUrl = GEOCODE_JSON_URL+"?${queryString}"
        def payload = new URL(requestUrl).text
        def jsonSlurper = new JsonSlurper()
        def doc = jsonSlurper.parseText(payload)
        def geocode = new Geopoint()
        geocode.address = doc.results.formatted_address
        geocode.latitude = Double.parseDouble(doc.results.geometry.location.lat.join(""))
        geocode.longitude = Double.parseDouble(doc.results.geometry.location.lng.join(""))
        geocode.locationType = doc.results.geometry.location_type.join("")
        return geocode
    }
}