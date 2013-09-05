import chcitohned.FinderService
import com.chcitohned.domain.Geopoint
import com.chcitohned.domain.Item
import grails.test.mixin.*
import org.junit.*


class FinderServiceTests extends GroovyTestCase {

   def finderService

   @Override
    public void setUp() throws Exception {
        super.setUp();

        //def geopoint = new Geopoint(address: "[Nivnice, Czech Republic]", latitude: 48.97464440, longitude: 17.64758320)
        //Item firstItem = new Item(name: masáž)
    }

   void testFindItems() {



      //List<Item> result = finderService.findItems("masáž", )
   }


}
