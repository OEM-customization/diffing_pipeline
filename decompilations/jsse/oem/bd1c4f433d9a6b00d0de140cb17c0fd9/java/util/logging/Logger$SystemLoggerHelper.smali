.class Ljava/util/logging/Logger$SystemLoggerHelper;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemLoggerHelper"
.end annotation


# static fields
.field static disableCallerCheck:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 436
    const-string/jumbo v0, "sun.util.logging.disableCallerCheck"

    invoke-static {v0}, Ljava/util/logging/Logger$SystemLoggerHelper;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljava/util/logging/Logger$SystemLoggerHelper;->disableCallerCheck:Z

    .line 435
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanProperty(Ljava/lang/String;)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 438
    new-instance v1, Ljava/util/logging/Logger$SystemLoggerHelper$1;

    invoke-direct {v1, p0}, Ljava/util/logging/Logger$SystemLoggerHelper$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
