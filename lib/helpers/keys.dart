class Keys {
  // Your application’s access key
  static String UNSPLASH_API_CLIENT_ID = '';
  
  // Your application’s secret key
  static String UNSPLASH_API_SECRET_ID = '';
  
  // A URI you control that handles successful user authorization
  static String REDIRECT_URI = "urn%3Aietf%3Awg%3Aoauth%3A2.0%3Aoob";
  
  // A + separated list of requested scopes from the user
  static String SCOPES =
      "public+read_user+write_user+read_photos+write_photos+write_likes+write_followers+read_collections+write_collections";
}
