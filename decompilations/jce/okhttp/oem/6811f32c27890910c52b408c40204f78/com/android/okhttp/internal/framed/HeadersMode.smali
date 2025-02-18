.class public final enum Lcom/android/okhttp/internal/framed/HeadersMode;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/internal/framed/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string/jumbo v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 20
    new-instance v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string/jumbo v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 21
    new-instance v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string/jumbo v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 22
    new-instance v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string/jumbo v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/okhttp/internal/framed/HeadersMode;

    sget-object v1, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->$VALUES:[Lcom/android/okhttp/internal/framed/HeadersMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/internal/framed/HeadersMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/internal/framed/HeadersMode;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->$VALUES:[Lcom/android/okhttp/internal/framed/HeadersMode;

    return-object v0
.end method


# virtual methods
.method public failIfHeadersAbsent()Z
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public failIfHeadersPresent()Z
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public failIfStreamAbsent()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26
    sget-object v1, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-eq p0, v1, :cond_9

    sget-object v1, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public failIfStreamPresent()Z
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
