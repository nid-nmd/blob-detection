// REFERENCE: http://www.learnopencv.com/blob-detection-using-opencv-python-c/
// REFERENCE: https://github.com/spmallick/learnopencv/tree/master/BlobDetector
// REFERENCE: http://docs.opencv.org/3.1.0/dd/d49/tutorial_py_contour_features.html#gsc.tab=0
// REFERENCE: http://docs.opencv.org/2.4/doc/tutorials/imgproc/shapedescriptors/find_contours/find_contours.html
#include "opencv2/opencv.hpp"

using namespace cv;
using namespace std;

int main( int argc, char** argv )
{
  int c = 0;
  VideoCapture capture;
  Mat frame, image;
  Mat imgHSV;

  RNG rng(12345);

  CommandLineParser parser(argc, argv,
                           "{image||}"
                           );  
  string img_name = parser.get<string>("image");
  if (!img_name.empty()) {
    frame = imread(img_name);
    if( frame.empty() ) {
      cout << "{\"detected\": \"false\"}" << endl;
      return 0;
    }
    cvtColor( frame, imgHSV, COLOR_BGR2HSV);
    Mat green_hue_range;
    inRange(imgHSV, Scalar(20, 100, 100), Scalar(30, 255, 255), green_hue_range);
    erode(green_hue_range, green_hue_range, getStructuringElement(MORPH_ELLIPSE, Size(3, 3)),cvPoint(-1, -1), 2);
    dilate(green_hue_range, green_hue_range, getStructuringElement(MORPH_ELLIPSE, Size(3, 3)),cvPoint(-1, -1), 2);
    vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;
    findContours( green_hue_range, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE);
    vector< vector< Point > > contours_poly( contours.size() );
    vector<Moments> mu(contours.size() );
    vector<Point2f> mc( contours.size() );
    vector<Rect> boundRect (contours.size());
    vector<Point2f> ContArea(contours.size());
    bool found = false;
    vector<double> areas(contours.size());
    double area = 0;
    Point2f center_largest_contour;
    // Mat drawing = Mat::zeros( green_hue_range.size(), CV_8UC3 );
    for( int i = 0; i< contours.size(); i++ ) {
      ContArea.clear();
      mu[i] = moments( contours[i], false );
      mc[i] = Point2f( mu[i].m10/mu[i].m00 , mu[i].m01/mu[i].m00 );
      approxPolyDP( Mat ( contours[i] ), contours_poly[i], 3, true );
      boundRect[i] = boundingRect( Mat ( contours_poly[i] ) );
      Point center = Point((boundRect[i].x + boundRect[i].width)/2, (boundRect[i].y + boundRect[i].height)/2);
      ContArea.push_back(Point2f(boundRect[i].x, boundRect[i].y));
      ContArea.push_back(Point2f(boundRect[i].x + boundRect[i].width, boundRect[i].y));
      ContArea.push_back(Point2f(boundRect[i].x + boundRect[i].width, boundRect[i].y + boundRect[i].height));
      ContArea.push_back(Point2f(boundRect[i].x, boundRect[i].y + boundRect[i].height));
      // double area = contourArea(ContArea);
      // areas.push_back(area);
      Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
      // drawContours( drawing, contours, i, color, 2, 8, hierarchy, 0, Point() );
      if (contourArea(ContArea) > area) {
        area = contourArea(ContArea);
        center_largest_contour = mc[i];
        // drawContours( frame, contours, i, color, 2, 8, hierarchy, 0, Point() );
        // cout<<"Rectangle " <<i<< " Centroid position is at: " << center.x << " " << center.y << endl;
        // circle( drawing, center, 4, Scalar(255, 255, 255), 3, 8, 0 );
        // circle( drawing, mc[i], 4, color, -1, 8, 0 );
        // cout << "Center: " << mc[i].x << ", " << mc[i].y << endl;
	// cout << "{\"detected\": \"true\", \"x\": \"" << mc[i].x << "\",\"y\":\"" << mc[i].y << "\"}" << endl;
      }
    }
    if (area > 100)
      found = true;
    if  (!found) {
	cout << "{\"detected\": \"false\"}" << endl;
    }
    else {
      cout << "{\"detected\": \"true\", \"x\": \"" << center_largest_contour.x << "\",\"y\":\"" << center_largest_contour.y << "\"}" << endl;
    }
  }
  else {
    if(!capture.open(c))
      cout << "Capture from camera #" <<  c << " didn't work" << endl;
    if( capture.isOpened() ) {
      cout << "Video capturing has been started ..." << endl;
      for(;;) {
        capture >> frame;
        if( frame.empty() )
          break;
      
        cvtColor( frame, imgHSV, COLOR_BGR2HSV);
        Mat green_hue_range;
        inRange(imgHSV, Scalar(20, 100, 100), Scalar(30, 255, 255), green_hue_range);
        erode(green_hue_range, green_hue_range, getStructuringElement(MORPH_ELLIPSE, Size(3, 3)),cvPoint(-1, -1), 2);
        dilate(green_hue_range, green_hue_range, getStructuringElement(MORPH_ELLIPSE, Size(3, 3)),cvPoint(-1, -1), 2);
        vector<vector<Point> > contours;
        vector<Vec4i> hierarchy;
        findContours( green_hue_range, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE);
        vector< vector< Point > > contours_poly( contours.size() );
        vector<Moments> mu(contours.size() );
        vector<Point2f> mc( contours.size() );
        vector<Rect> boundRect (contours.size());
        vector<Point2f> ContArea(contours.size());
        Mat drawing = Mat::zeros( green_hue_range.size(), CV_8UC3 );
        for( int i = 0; i< contours.size(); i++ ) {
          ContArea.clear();
          mu[i] = moments( contours[i], false );
          mc[i] = Point2f( mu[i].m10/mu[i].m00 , mu[i].m01/mu[i].m00 );
          approxPolyDP( Mat ( contours[i] ), contours_poly[i], 3, true );
          boundRect[i] = boundingRect( Mat ( contours_poly[i] ) );
          Point center = Point((boundRect[i].x + boundRect[i].width)/2, (boundRect[i].y + boundRect[i].height)/2);
          ContArea.push_back(Point2f(boundRect[i].x, boundRect[i].y));
          ContArea.push_back(Point2f(boundRect[i].x + boundRect[i].width, boundRect[i].y));
          ContArea.push_back(Point2f(boundRect[i].x + boundRect[i].width, boundRect[i].y + boundRect[i].height));
          ContArea.push_back(Point2f(boundRect[i].x, boundRect[i].y + boundRect[i].height));
          double area = contourArea(ContArea);
          Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
          drawContours( drawing, contours, i, color, 2, 8, hierarchy, 0, Point() );
          if (area > 1000) {
            // drawContours( frame, contours, i, color, 2, 8, hierarchy, 0, Point() );
            // cout<<"Rectangle " <<i<< " Centroid position is at: " << center.x << " " << center.y << endl;
            // circle( drawing, center, 4, Scalar(255, 255, 255), 3, 8, 0 );
            circle( drawing, mc[i], 4, color, -1, 8, 0 );
            cout << "{\"x\": \"" << mc[i].x << "\",\"y\":\"" << mc[i].y << "\"}" << endl;
          }
        }

        // imshow( "Contours", frame );
        imshow( "Contours", drawing );
        int c = waitKey(10);
        if( c == 27 || c == 'q' || c == 'Q' ) {
          break;
        }
      }
    }
  }
  return 0;
}  
