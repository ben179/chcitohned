import chcitohned.GeocodeService
import com.chcitohned.domain.Geopoint
import grails.test.mixin.*
import org.junit.*

class GeocodeServiceTests extends GroovyTestCase {

    def geocodeService

    def testFindCoordinatesByCityName() {
        checkIfGeopointServiceWasInjected()

        def expected = new Geopoint(address: "[Nivnice, Czech Republic]", latitude: 48.97464440, longitude: 17.64758320)

        def result = geocodeService.findByAddress("Nivnice")
        assertEquals(expected.latitude, result.latitude)
        assertEquals(expected.longitude, result.longitude)
        assertEquals(expected.address, result.address)
    }

    private void checkIfGeopointServiceWasInjected() {
        assertNotNull(geocodeService)
    }

}
