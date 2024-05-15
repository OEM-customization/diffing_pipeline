.class final Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;
.super Ljavax/net/ssl/SNIMatcher;
.source "SNIHostName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/net/ssl/SNIHostName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SNIHostNameMatcher"
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/net/ssl/SNIMatcher;-><init>(I)V

    .line 343
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    .line 344
    return-void
.end method


# virtual methods
.method public matches(Ljavax/net/ssl/SNIServerName;)Z
    .registers 7
    .param p1, "serverName"    # Ljavax/net/ssl/SNIServerName;

    .prologue
    const/4 v4, 0x0

    .line 364
    if-nez p1, :cond_c

    .line 365
    new-instance v3, Ljava/lang/NullPointerException;

    .line 366
    const-string/jumbo v4, "The SNIServerName argument cannot be null"

    .line 365
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :cond_c
    instance-of v3, p1, Ljavax/net/ssl/SNIHostName;

    if-nez v3, :cond_3c

    .line 371
    invoke-virtual {p1}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 372
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 373
    const-string/jumbo v4, "The server name type is not host_name"

    .line 372
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    :cond_1f
    :try_start_1f
    new-instance v2, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {p1}, Ljavax/net/ssl/SNIServerName;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SNIHostName;-><init>([B)V
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_28} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_28} :catch_3a

    .line 386
    .local v2, "hostname":Ljavax/net/ssl/SNIHostName;
    :goto_28
    invoke-virtual {v2}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "asciiName":Ljava/lang/String;
    iget-object v3, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 388
    const/4 v3, 0x1

    return v3

    .line 378
    .end local v0    # "asciiName":Ljava/lang/String;
    .end local v2    # "hostname":Ljavax/net/ssl/SNIHostName;
    :catch_3a
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/RuntimeException;
    return v4

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3c
    move-object v2, p1

    .line 382
    check-cast v2, Ljavax/net/ssl/SNIHostName;

    .restart local v2    # "hostname":Ljavax/net/ssl/SNIHostName;
    goto :goto_28

    .line 393
    .restart local v0    # "asciiName":Ljava/lang/String;
    :cond_40
    iget-object v3, p0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-static {v0}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method
