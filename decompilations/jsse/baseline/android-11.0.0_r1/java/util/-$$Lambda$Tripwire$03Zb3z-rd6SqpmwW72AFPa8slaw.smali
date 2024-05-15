.class public final synthetic Ljava/util/-$$Lambda$Tripwire$03Zb3z-rd6SqpmwW72AFPa8slaw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/security/PrivilegedAction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/-$$Lambda$Tripwire$03Zb3z-rd6SqpmwW72AFPa8slaw;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/-$$Lambda$Tripwire$03Zb3z-rd6SqpmwW72AFPa8slaw;

    invoke-direct {v0}, Ljava/util/-$$Lambda$Tripwire$03Zb3z-rd6SqpmwW72AFPa8slaw;-><init>()V

    sput-object v0, Ljava/util/-$$Lambda$Tripwire$03Zb3z-rd6SqpmwW72AFPa8slaw;->INSTANCE:Ljava/util/-$$Lambda$Tripwire$03Zb3z-rd6SqpmwW72AFPa8slaw;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Ljava/util/Tripwire;->lambda$static$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
