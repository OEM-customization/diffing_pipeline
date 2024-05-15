.class public final synthetic Ljava/util/-$$Lambda$Comparator$BZSVCoA8i87ehjxxZ1weEounfDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Comparator;

.field public final synthetic blacklist f$1:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$$Lambda$Comparator$BZSVCoA8i87ehjxxZ1weEounfDQ;->f$0:Ljava/util/Comparator;

    iput-object p2, p0, Ljava/util/-$$Lambda$Comparator$BZSVCoA8i87ehjxxZ1weEounfDQ;->f$1:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Ljava/util/-$$Lambda$Comparator$BZSVCoA8i87ehjxxZ1weEounfDQ;->f$0:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/-$$Lambda$Comparator$BZSVCoA8i87ehjxxZ1weEounfDQ;->f$1:Ljava/util/Comparator;

    invoke-static {v0, v1, p1, p2}, Ljava/util/Comparator;->lambda$thenComparing$36697e65$1(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
