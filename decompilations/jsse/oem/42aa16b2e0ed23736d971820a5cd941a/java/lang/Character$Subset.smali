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
.field private greylist-max-o name:Ljava/lang/String;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    if-eqz p1, :cond_8

    .line 626
    iput-object p1, p0, Ljava/lang/Character$Subset;->name:Ljava/lang/String;

    .line 627
    return-void

    .line 624
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 637
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public final whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 648
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 655
    iget-object v0, p0, Ljava/lang/Character$Subset;->name:Ljava/lang/String;

    return-object v0
.end method
