.class Ljava/io/ObjectStreamClass$5;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;->computeDefaultSUID(Ljava/lang/Class;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/ObjectStreamClass$MemberSignature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Ljava/io/ObjectStreamClass$MemberSignature;Ljava/io/ObjectStreamClass$MemberSignature;)I
    .registers 6
    .param p1, "ms1"    # Ljava/io/ObjectStreamClass$MemberSignature;
    .param p2, "ms2"    # Ljava/io/ObjectStreamClass$MemberSignature;

    .line 1856
    iget-object v0, p1, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    iget-object v1, p2, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1857
    .local v0, "comp":I
    if-nez v0, :cond_12

    .line 1858
    iget-object v1, p1, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    iget-object v2, p2, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1860
    :cond_12
    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1854
    check-cast p1, Ljava/io/ObjectStreamClass$MemberSignature;

    check-cast p2, Ljava/io/ObjectStreamClass$MemberSignature;

    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectStreamClass$5;->compare(Ljava/io/ObjectStreamClass$MemberSignature;Ljava/io/ObjectStreamClass$MemberSignature;)I

    move-result p1

    return p1
.end method
