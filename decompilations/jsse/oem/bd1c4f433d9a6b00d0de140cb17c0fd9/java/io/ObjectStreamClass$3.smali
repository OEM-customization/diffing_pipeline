.class final Ljava/io/ObjectStreamClass$3;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;->computeDefaultSUID(Ljava/lang/Class;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/ObjectStreamClass$MemberSignature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/ObjectStreamClass$MemberSignature;Ljava/io/ObjectStreamClass$MemberSignature;)I
    .registers 5
    .param p1, "ms1"    # Ljava/io/ObjectStreamClass$MemberSignature;
    .param p2, "ms2"    # Ljava/io/ObjectStreamClass$MemberSignature;

    .prologue
    .line 1716
    iget-object v0, p1, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    iget-object v1, p2, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1715
    check-cast p1, Ljava/io/ObjectStreamClass$MemberSignature;

    check-cast p2, Ljava/io/ObjectStreamClass$MemberSignature;

    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectStreamClass$3;->compare(Ljava/io/ObjectStreamClass$MemberSignature;Ljava/io/ObjectStreamClass$MemberSignature;)I

    move-result v0

    return v0
.end method
