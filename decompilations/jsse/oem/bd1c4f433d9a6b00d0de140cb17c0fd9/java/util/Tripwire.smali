.class final Ljava/util/Tripwire;
.super Ljava/lang/Object;
.source "Tripwire.java"


# static fields
.field static final ENABLED:Z

.field private static final TRIPWIRE_PROPERTY:Ljava/lang/String; = "org.openjdk.java.util.stream.tripwire"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    sget-object v0, Ljava/util/-$Lambda$3UFkonVPLR5NaHEH6a4Hvn535JY;->$INST$0:Ljava/util/-$Lambda$3UFkonVPLR5NaHEH6a4Hvn535JY;

    .line 52
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$-java_util_Tripwire_2203()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 53
    const-string/jumbo v0, "org.openjdk.java.util.stream.tripwire"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static trip(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "trippingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method
