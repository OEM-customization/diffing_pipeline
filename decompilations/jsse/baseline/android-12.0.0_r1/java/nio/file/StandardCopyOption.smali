.class public final enum Ljava/nio/file/StandardCopyOption;
.super Ljava/lang/Enum;
.source "StandardCopyOption.java"

# interfaces
.implements Ljava/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/StandardCopyOption;",
        ">;",
        "Ljava/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/StandardCopyOption;

.field public static final enum whitelist test-api ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

.field public static final enum whitelist test-api COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

.field public static final enum whitelist test-api REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 38
    new-instance v0, Ljava/nio/file/StandardCopyOption;

    const-string v1, "REPLACE_EXISTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 42
    new-instance v1, Ljava/nio/file/StandardCopyOption;

    const-string v3, "COPY_ATTRIBUTES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    .line 46
    new-instance v3, Ljava/nio/file/StandardCopyOption;

    const-string v5, "ATOMIC_MOVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/nio/file/StandardCopyOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    .line 34
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/nio/file/StandardCopyOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ljava/nio/file/StandardCopyOption;->$VALUES:[Ljava/nio/file/StandardCopyOption;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/nio/file/StandardCopyOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Ljava/nio/file/StandardCopyOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/nio/file/StandardCopyOption;
    .registers 1

    .line 34
    sget-object v0, Ljava/nio/file/StandardCopyOption;->$VALUES:[Ljava/nio/file/StandardCopyOption;

    invoke-virtual {v0}, [Ljava/nio/file/StandardCopyOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/StandardCopyOption;

    return-object v0
.end method
