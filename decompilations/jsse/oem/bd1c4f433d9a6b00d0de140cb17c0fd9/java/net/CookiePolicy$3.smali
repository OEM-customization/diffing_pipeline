.class final Ljava/net/CookiePolicy$3;
.super Ljava/lang/Object;
.source "CookiePolicy.java"

# interfaces
.implements Ljava/net/CookiePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/CookiePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 62
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 63
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_6
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
