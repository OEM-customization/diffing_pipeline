.class public Lsun/util/ResourceBundleEnumeration;
.super Ljava/lang/Object;
.source "ResourceBundleEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field enumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field next:Ljava/lang/String;

.field set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Enumeration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lsun/util/ResourceBundleEnumeration;->set:Ljava/util/Set;

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->iterator:Ljava/util/Iterator;

    .line 52
    iput-object p2, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    .line 53
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 59
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 60
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    .line 70
    :cond_17
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    :goto_1c
    return v0

    .line 61
    :cond_1d
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    if-eqz v0, :cond_17

    .line 62
    :cond_21
    :goto_21
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    if-nez v0, :cond_17

    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->set:Ljava/util/Set;

    iget-object v1, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 65
    iput-object v2, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    goto :goto_21

    .line 70
    :cond_44
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lsun/util/ResourceBundleEnumeration;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lsun/util/ResourceBundleEnumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 75
    iget-object v0, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    .line 76
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/util/ResourceBundleEnumeration;->next:Ljava/lang/String;

    .line 77
    return-object v0

    .line 79
    .end local v0    # "result":Ljava/lang/String;
    :cond_c
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
