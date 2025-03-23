import http from "k6/http";
import { sleep, check, group } from "k6";

const DAU = 100000;
const peak = DAU * 0.2;
const peakMin = 120;
const sampleDurationMin = 30;
const peakSampleUser = Math.round(peak * (sampleDurationMin / peakMin));


export const options = {
  discardResponseBodies: true,
  scenarios: {
    "load-test": {
      executor: 'per-vu-iterations',
      vus: peakSampleUser,
      iterations: 3,
      maxDuration: `${sampleDurationMin}m`,
    },
  },
  thresholds: {
    http_req_duration: ["p(95)<200"],
    http_req_failed: ["rate<0.01"],
  },
};

export default function () {
  const res = http.get("http://localhost:8080/api/v1/movies?genre=ACTION");

  check(res, {
    "status is 200": (r) => r.status === 200,
    "response time < 200ms": (r) => r.timings.duration < 200
  })
  sleep(0.1);
}