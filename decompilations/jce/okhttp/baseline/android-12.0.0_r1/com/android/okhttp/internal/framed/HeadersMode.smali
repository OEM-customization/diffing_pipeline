.class public final enum Lcom/android/okhttp/internal/framed/HeadersMode;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/okhttp/internal/framed/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum blacklist HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum blacklist SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum blacklist SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum blacklist SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 23
    new-instance v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_SYN_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 24
    new-instance v1, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string v3, "SPDY_REPLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 25
    new-instance v3, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string v5, "SPDY_HEADERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 26
    new-instance v5, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string v7, "HTTP_20_HEADERS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 22
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/okhttp/internal/framed/HeadersMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/okhttp/internal/framed/HeadersMode;->$VALUES:[Lcom/android/okhttp/internal/framed/HeadersMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/okhttp/internal/framed/HeadersMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/okhttp/internal/framed/HeadersMode;
    .registers 1

    .line 22
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->$VALUES:[Lcom/android/okhttp/internal/framed/HeadersMode;

    invoke-virtual {v0}, [Lcom/android/okhttp/internal/framed/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/internal/framed/HeadersMode;

    return-object v0
.end method


# virtual methods
.method public blacklist failIfHeadersAbsent()Z
    .registers 2

    .line 43
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist failIfHeadersPresent()Z
    .registers 2

    .line 51
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist failIfStreamAbsent()Z
    .registers 2

    .line 30
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist failIfStreamPresent()Z
    .registers 2

    .line 35
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
