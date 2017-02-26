#include <boost/date_time/gregorian/gregorian.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>

using namespace boost::gregorian;
using namespace boost::posix_time;

namespace gigasecond {
  const int GIGASECOND = 1000000000;

  const date advance(date base_date) {
    ptime posixe_time(base_date, seconds(GIGASECOND));
    return posixe_time.date();
  }
}
