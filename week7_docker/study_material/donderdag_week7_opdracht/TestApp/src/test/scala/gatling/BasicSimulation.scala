package gatling

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import scala.concurrent.duration._

class BasicSimulation extends Simulation {

  val scn = scenario("My scenario").repeat(3) {
    exec(
      http("Ping")
        .get("http://192.168.178.157:9108/hello")
        .check(status.is(200))
    ).pause(10 millisecond)
  }

  setUp(scn.inject(
     rampUsers(10) over (2 seconds)
  )).assertions(global.successfulRequests.percent.is(100))	 
}
