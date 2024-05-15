.class Lcom/android/org/bouncycastle/util/Properties$1;
.super Ljava/lang/Object;
.source "Properties.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/util/Properties;->fetchProperty(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$propertyName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/Properties$1;->val$propertyName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 3

    .line 143
    # getter for: Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/android/org/bouncycastle/util/Properties;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 144
    .local v0, "localProps":Ljava/util/Map;
    if-eqz v0, :cond_13

    .line 146
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/Properties$1;->val$propertyName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 149
    :cond_13
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/Properties$1;->val$propertyName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
