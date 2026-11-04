# الأوامر المستخدَمة لإنشاء فرع Development ورفعه إلى Remote

فيما يلي قائمة بالأوامر التي تم تنفيذها لإنشاء الفرع المحلي `development` من `master` ورفعه إلى المستودع البعيد `origin`:

---

### 1. التحقق من حالة المستودع والفروع الحالية
```bash
git status
git branch -a
```

### 2. الانتقال إلى فرع master
```bash
git checkout master
```

### 3. إنشاء فرع محلي جديد باسم `dev` متفرع من `master` والتحويل إليه
```bash
git checkout -b dev
```

### 4. تعديل اسم الفرع المحلي إلى `development`
```bash
git branch -m dev development
```

### 5. حذف الفرع القديم المحتوي على خطأ إملائي (`devolpment`)
```bash
git branch -D devolpment
```

### 6. رفع الفرع إلى المستودع البعيد (`origin`) وربط التتبع (Upstream Tracking)
```bash
git push -u origin development
```

### 7. التأكد من قائمة الفروع المحلية والبعيدة
```bash
git branch -a
```
