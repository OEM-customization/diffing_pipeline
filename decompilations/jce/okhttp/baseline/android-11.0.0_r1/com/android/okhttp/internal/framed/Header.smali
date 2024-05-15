.class public final Lcom/android/okhttp/internal/framed/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final blacklist RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist VERSION:Lcom/android/okhttp/okio/ByteString;


# instance fields
.field final blacklist hpackSize:I

.field public final blacklist name:Lcom/android/okhttp/okio/ByteString;

.field public final blacklist value:Lcom/android/okhttp/okio/ByteString;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-string v0, ":status"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    .line 11
    const-string v0, ":method"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    .line 12
    const-string v0, ":path"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    .line 13
    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    .line 14
    const-string v0, ":authority"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    .line 15
    const-string v0, ":host"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    .line 16
    const-string v0, ":version"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V
    .registers 5
    .param p1, "name"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "value"    # Lcom/android/okhttp/okio/ByteString;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 35
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    .line 36
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "value"    # Ljava/lang/String;

    .line 30
    invoke-static {p2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-static {p2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p1, Lcom/android/okhttp/internal/framed/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 41
    move-object v0, p1

    check-cast v0, Lcom/android/okhttp/internal/framed/Header;

    .line 42
    .local v0, "that":Lcom/android/okhttp/internal/framed/Header;
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    iget-object v3, v0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    iget-object v3, v0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 42
    :goto_1f
    return v1

    .line 45
    .end local v0    # "that":Lcom/android/okhttp/internal/framed/Header;
    :cond_20
    return v1
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 49
    const/16 v0, 0x11

    .line 50
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 51
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 52
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
