.class Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet;
.super Ljava/util/Collections$UnmodifiableNavigableSet;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableNavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableNavigableSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x574f052f21e216beL


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1268
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet<TE;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    .line 1269
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1271
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet<TE;>;"
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableSet;->-get0()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
