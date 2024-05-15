.class public Lsun/reflect/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .registers 7
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_a

    .line 47
    :cond_4
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 50
    :cond_a
    invoke-static {p0, p1, p2, p3}, Lsun/reflect/Reflection;->verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_53

    .line 51
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    const-string/jumbo v2, " can not access a member of class "

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string/jumbo v2, " with modifiers \""

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    const-string/jumbo v2, "\""

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_53
    return-void
.end method

.method private static isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v0, v1, v2, v3}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 15
    .param p0, "loader1"    # Ljava/lang/ClassLoader;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "loader2"    # Ljava/lang/ClassLoader;
    .param p3, "name2"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x4c

    const/16 v9, 0x2e

    const/4 v0, -0x1

    const/16 v3, 0x5b

    const/4 v1, 0x0

    .line 150
    if-eq p0, p2, :cond_b

    .line 151
    return v1

    .line 153
    :cond_b
    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 154
    .local v6, "lastDot1":I
    invoke-virtual {p3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 155
    .local v7, "lastDot2":I
    if-eq v6, v0, :cond_17

    if-ne v7, v0, :cond_1b

    .line 158
    :cond_17
    if-ne v6, v7, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 160
    :cond_1b
    const/4 v2, 0x0

    .line 161
    .local v2, "idx1":I
    const/4 v4, 0x0

    .line 164
    .local v4, "idx2":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4b

    .line 166
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 167
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_23

    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_4b

    .line 170
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal class name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_4b
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_79

    .line 175
    :cond_51
    add-int/lit8 v4, v4, 0x1

    .line 176
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_51

    .line 177
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_79

    .line 179
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal class name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_79
    sub-int v5, v6, v2

    .line 185
    .local v5, "length1":I
    sub-int v8, v7, v4

    .line 187
    .local v8, "length2":I
    if-eq v5, v8, :cond_80

    .line 188
    return v1

    :cond_80
    move-object v0, p1

    move-object v3, p3

    .line 190
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ofClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_b

    .line 199
    if-ne p0, p1, :cond_6

    .line 200
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 204
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z
    .registers 11
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "modifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "gotIsSameClassPackage":Z
    const/4 v1, 0x0

    .line 75
    .local v1, "isSameClassPackage":Z
    if-ne p0, p1, :cond_7

    .line 77
    return v6

    .line 82
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_19

    .line 83
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    .line 84
    .local v1, "isSameClassPackage":Z
    const/4 v0, 0x1

    .line 85
    if-nez v1, :cond_19

    .line 86
    return v5

    .line 92
    .end local v1    # "isSameClassPackage":Z
    :cond_19
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 93
    return v6

    .line 96
    :cond_20
    const/4 v2, 0x0

    .line 98
    .local v2, "successSoFar":Z
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 100
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 101
    const/4 v2, 0x1

    .line 105
    :cond_2e
    if-nez v2, :cond_42

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    .line 106
    if-nez v0, :cond_3f

    .line 107
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    .line 109
    .restart local v1    # "isSameClassPackage":Z
    const/4 v0, 0x1

    .line 112
    .end local v1    # "isSameClassPackage":Z
    :cond_3f
    if-eqz v1, :cond_42

    .line 113
    const/4 v2, 0x1

    .line 117
    :cond_42
    if-nez v2, :cond_45

    .line 118
    return v5

    .line 121
    :cond_45
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 123
    if-nez p2, :cond_60

    move-object v3, p1

    .line 124
    .local v3, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4e
    if-eq v3, p0, :cond_65

    .line 125
    if-nez v0, :cond_57

    .line 126
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    .line 127
    .restart local v1    # "isSameClassPackage":Z
    const/4 v0, 0x1

    .line 129
    .end local v1    # "isSameClassPackage":Z
    :cond_57
    if-nez v1, :cond_65

    .line 130
    invoke-static {v3, p0}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 131
    return v5

    .line 123
    .end local v3    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .restart local v3    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_4e

    .line 137
    .end local v3    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_65
    return v6
.end method
