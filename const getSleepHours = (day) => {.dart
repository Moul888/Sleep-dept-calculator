const getSleepHours = (day) => {
  switch (day) {
    case 'monday':
      return 7;

    case 'tuesday':
      return 9;

    case 'wednesday':
      return 9;

    case 'thursday':
      return 7;

    case 'friday':
      return 9;

    case 'saturday':
      return 7;

    case 'sunday':
      return 7;

    default:
      return 0;
    }
};
const getActualSleepHours = () =>
  getSleepHours('monday') +
  getSleepHours('tuesday') +
  getSleepHours('wednesday') +
  getSleepHours('thursday') +
  getSleepHours('friday') +
  getSleepHours('saturday') +
  getSleepHours('sunday');

  console.log(getSleepHours('sunday'));
  console.log(getActualSleepHours());

const getIdealSleepHours= () =>{
  let idealHours = 8;
   return idealHours * 7;
};
  // console.log(getIdealSleepHours());

const calculateSleepDebt = () => {
  let actualSleepHours = getActualSleepHours();
  let idealSleepHours = getIdealSleepHours();

  if (actualSleepHours === idealSleepHours) {
    console.log('You have the perfect amount of sleep'); }

  else if (actualSleepHours > idealSleepHours) {
    console.log('You have got ' + " " + (idealSleepHours - actualSleepHours) + " " + 'more hours of sleep'); }

  else if (actualSleepHours < idealSleepHours){
    console.log('Get some rest because you have' + " " + (idealSleepHours - actualSleepHours) +" " + 'hours less that it should be');
  }

  else {
    console.log('Your are in a nightmare');
  }
}

calculateSleepDebt();
