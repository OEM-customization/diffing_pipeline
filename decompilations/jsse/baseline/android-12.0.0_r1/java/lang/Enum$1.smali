.class Ljava/lang/Enum$1;
.super Llibcore/util/BasicLruCache;
.source "Enum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache<",
        "Ljava/lang/Class<",
        "+",
        "Ljava/lang/Enum;",
        ">;[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "arg0"    # I

    .line 275
    invoke-direct {p0, p1}, Llibcore/util/BasicLruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 275
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Enum$1;->create(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist create(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 277
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    # invokes: Ljava/lang/Enum;->enumValues(Ljava/lang/Class;)[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Enum;->access$000(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
