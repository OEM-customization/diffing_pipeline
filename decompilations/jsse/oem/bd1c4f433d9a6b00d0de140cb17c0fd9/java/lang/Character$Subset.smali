.class public Ljava/lang/Character$Subset;
.super Ljava/lang/Object;
.source "Character.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Character;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subset"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    if-nez p1, :cond_e

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_e
    iput-object p1, p0, Ljava/lang/Character$Subset;->name:Ljava/lang/String;

    .line 622
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 632
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 643
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Ljava/lang/Character$Subset;->name:Ljava/lang/String;

    return-object v0
.end method
