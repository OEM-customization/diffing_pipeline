.class public final synthetic Ljava/util/stream/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;->INSTANCE:Ljava/util/stream/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method
