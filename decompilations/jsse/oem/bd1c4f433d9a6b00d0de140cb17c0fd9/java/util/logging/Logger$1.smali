.class final Ljava/util/logging/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/Logger;->findSystemResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/ResourceBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/logging/Logger$1;->val$locale:Ljava/util/Locale;

    .line 1820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1821
    invoke-virtual {p0}, Ljava/util/logging/Logger$1;->run()Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/ResourceBundle;
    .registers 5

    .prologue
    .line 1824
    :try_start_0
    const-string/jumbo v1, "sun.util.logging.resources.logging"

    .line 1825
    iget-object v2, p0, Ljava/util/logging/Logger$1;->val$locale:Ljava/util/Locale;

    .line 1826
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1824
    invoke-static {v1, v2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_c
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 1827
    :catch_e
    move-exception v0

    .line 1828
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method