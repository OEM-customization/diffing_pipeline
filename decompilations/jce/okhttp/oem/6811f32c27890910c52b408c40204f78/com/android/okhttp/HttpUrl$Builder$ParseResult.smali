.class final enum Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/HttpUrl$Builder$ParseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

.field public static final enum UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 964
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 965
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string/jumbo v1, "MISSING_SCHEME"

    invoke-direct {v0, v1, v3}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 966
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string/jumbo v1, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v1, v4}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 967
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string/jumbo v1, "INVALID_PORT"

    invoke-direct {v0, v1, v5}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 968
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    const-string/jumbo v1, "INVALID_HOST"

    invoke-direct {v0, v1, v6}, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    .line 963
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->$VALUES:[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 963
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 963
    const-class v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .registers 1

    .prologue
    .line 963
    sget-object v0, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->$VALUES:[Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v0
.end method
