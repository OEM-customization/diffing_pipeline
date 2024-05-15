.class public final Lcom/android/okhttp/internal/framed/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

.field public static final VERSION:Lcom/android/okhttp/okio/ByteString;


# instance fields
.field final hpackSize:I

.field public final name:Lcom/android/okhttp/okio/ByteString;

.field public final value:Lcom/android/okhttp/okio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-string/jumbo v0, ":status"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    .line 9
    const-string/jumbo v0, ":method"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    .line 10
    const-string/jumbo v0, ":path"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    .line 11
    const-string/jumbo v0, ":scheme"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    .line 12
    const-string/jumbo v0, ":authority"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    .line 13
    const-string/jumbo v0, ":host"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    .line 14
    const-string/jumbo v0, ":version"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V
    .registers 5
    .param p1, "name"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "value"    # Lcom/android/okhttp/okio/ByteString;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 33
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    .line 34
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    invoke-static {p2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 38
    instance-of v2, p1, Lcom/android/okhttp/internal/framed/Header;

    if-eqz v2, :cond_1b

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/android/okhttp/internal/framed/Header;

    .line 40
    .local v0, "that":Lcom/android/okhttp/internal/framed/Header;
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    iget-object v3, v0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 41
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    iget-object v2, v0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    :cond_1a
    return v1

    .line 43
    .end local v0    # "that":Lcom/android/okhttp/internal/framed/Header;
    :cond_1b
    return v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 47
    const/16 v0, 0x11

    .line 48
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 49
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 50
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 54
    const-string/jumbo v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
