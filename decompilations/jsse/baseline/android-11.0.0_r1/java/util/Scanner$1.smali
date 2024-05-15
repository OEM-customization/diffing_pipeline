.class Ljava/util/Scanner$1;
.super Lsun/misc/LRUCache;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/misc/LRUCache<",
        "Ljava/lang/String;",
        "Ljava/util/regex/Pattern;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/Scanner;


# direct methods
.method constructor blacklist <init>(Ljava/util/Scanner;I)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/Scanner;
    .param p2, "size"    # I

    .line 366
    iput-object p1, p0, Ljava/util/Scanner$1;->this$0:Ljava/util/Scanner;

    invoke-direct {p0, p2}, Lsun/misc/LRUCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 366
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/Scanner$1;->create(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist create(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 368
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 366
    check-cast p1, Ljava/util/regex/Pattern;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/util/Scanner$1;->hasName(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected blacklist hasName(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 4
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "s"    # Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
