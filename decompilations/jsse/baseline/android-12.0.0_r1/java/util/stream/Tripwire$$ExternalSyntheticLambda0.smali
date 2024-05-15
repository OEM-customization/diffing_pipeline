.class public final synthetic Ljava/util/stream/Tripwire$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Tripwire$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Tripwire$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/Tripwire$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/util/stream/Tripwire$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/stream/Tripwire$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Ljava/util/stream/Tripwire;->lambda$static$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
