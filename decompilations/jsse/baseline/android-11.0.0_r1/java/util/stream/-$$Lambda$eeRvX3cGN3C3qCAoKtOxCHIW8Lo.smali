.class public final synthetic Ljava/util/stream/-$$Lambda$eeRvX3cGN3C3qCAoKtOxCHIW8Lo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$eeRvX3cGN3C3qCAoKtOxCHIW8Lo;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$eeRvX3cGN3C3qCAoKtOxCHIW8Lo;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$eeRvX3cGN3C3qCAoKtOxCHIW8Lo;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$eeRvX3cGN3C3qCAoKtOxCHIW8Lo;->INSTANCE:Ljava/util/stream/-$$Lambda$eeRvX3cGN3C3qCAoKtOxCHIW8Lo;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfLong;

    check-cast p1, Ljava/util/stream/Node$OfLong;

    check-cast p2, Ljava/util/stream/Node$OfLong;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V

    check-cast v0, Ljava/util/stream/Node$OfLong;

    return-object v0
.end method
