package suite 
{
  import flexunit.framework.TestSuite;
  import flexunit.framework.TestCase;
  import org.coderepos.text.TinySegmenter;

  public class TinySegmenterTest extends TestCase
  {
    public function TinySegmenterTest(method:String)
    {
      super(method);
    }

    public static function suite():TestSuite
    {
      var ts:TestSuite = new TestSuite();
      ts.addTest(new TinySegmenterTest("testBasic"));
      return ts;
    }

    public function testBasic():void
    {
      var ts:TinySegmenter = new TinySegmenter();
      var result:Array = ts.segment("今日、僕は学校に出かけました。");
      assertEquals(10, result.length);
      assertEquals("今日|、|僕|は|学校|に|出かけ|まし|た|。", result.join("|"));
    }
  }
}
