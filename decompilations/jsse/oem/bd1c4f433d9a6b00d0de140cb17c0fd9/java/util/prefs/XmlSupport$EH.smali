.class Ljava/util/prefs/XmlSupport$EH;
.super Ljava/lang/Object;
.source "XmlSupport.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/XmlSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EH"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/prefs/XmlSupport$EH;)V
    .registers 2
    .param p1, "-this0"    # Ljava/util/prefs/XmlSupport$EH;

    .prologue
    invoke-direct {p0}, Ljava/util/prefs/XmlSupport$EH;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .param p1, "x"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 444
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .param p1, "x"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 447
    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .param p1, "x"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 450
    throw p1
.end method
