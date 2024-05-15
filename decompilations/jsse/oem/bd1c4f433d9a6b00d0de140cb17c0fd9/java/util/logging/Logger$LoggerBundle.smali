.class final Ljava/util/logging/Logger$LoggerBundle;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoggerBundle"
.end annotation


# instance fields
.field final resourceBundleName:Ljava/lang/String;

.field final userBundle:Ljava/util/ResourceBundle;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/ResourceBundle;)V
    .registers 3
    .param p1, "resourceBundleName"    # Ljava/lang/String;
    .param p2, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/logging/Logger$LoggerBundle;)V
    .registers 4
    .param p1, "resourceBundleName"    # Ljava/lang/String;
    .param p2, "bundle"    # Ljava/util/ResourceBundle;
    .param p3, "-this2"    # Ljava/util/logging/Logger$LoggerBundle;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;)V

    return-void
.end method

.method static get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    .line 237
    if-nez p0, :cond_9

    if-nez p1, :cond_9

    .line 238
    invoke-static {}, Ljava/util/logging/Logger;->-get0()Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v0

    return-object v0

    .line 239
    :cond_9
    const-string/jumbo v0, "sun.util.logging.resources.logging"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    .line 240
    invoke-static {}, Ljava/util/logging/Logger;->-get1()Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v0

    return-object v0

    .line 242
    :cond_19
    new-instance v0, Ljava/util/logging/Logger$LoggerBundle;

    invoke-direct {v0, p0, p1}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;)V

    return-object v0
.end method


# virtual methods
.method isSystemBundle()Z
    .registers 3

    .prologue
    .line 234
    const-string/jumbo v0, "sun.util.logging.resources.logging"

    iget-object v1, p0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
