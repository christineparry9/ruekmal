# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
ProgramExercise.destroy_all
Article.destroy_all
ProgramExercise.destroy_all
Exercise.destroy_all
Answer.destroy_all
Question.destroy_all


workplace = Workplace.new(name: "Microsoft")
workplace.save
program1 = Program.create(name: "Lower back pain", standing_points_goal: 120, standing_goal: 180, program_length: 7)
program2 = Program.create(name: "Upper back pain", standing_points_goal: 120, standing_goal: 180, program_length: 10)
program3 = Program.create(name: "Neck & Shoulders", standing_points_goal: 120, standing_goal: 180, program_length: 30)
program4 = Program.create(name: "Neck & Shoulders", standing_points_goal: 120, standing_goal: 180, program_length: 30)
program5 = Program.create(name: "Neck & Shoulders", standing_points_goal: 120, standing_goal: 180, program_length: 30)
program6 = Program.create(name: "Neck & Shoulders", standing_points_goal: 120, standing_goal: 180, program_length: 30)

user1 = User.new(number_of_points: 22, first_name: "Christine", program: program1, workplace: workplace, email: "christine@test.com", password: "testtest", password_confirmation: "testtest")
user1.save!

user2 = User.new(number_of_points: 25, first_name: "Lena", program: program1, workplace: workplace, email: "lena@test.com", password: "testtest", password_confirmation: "testtest")
user2.save!
p user2

user3 = User.new(number_of_points: 60, first_name: "Constance", program: program1, workplace: workplace, email: "constance@test.com", password: "testtest", password_confirmation: "testtest")
user3.save!

user4 = User.new(number_of_points: 5, first_name: "Dareos", program: program1, workplace: workplace, email: "dareos@test.com", password: "testtest", password_confirmation: "testtest")
user4.save!

user5 = User.new(number_of_points: 20, first_name: "Domenico", program: program1, workplace: workplace, email: "domenico@test.com", password: "testtest", password_confirmation: "testtest")
user5.save!

exercise1 = Exercise.new(category: "neck", video_url: "https://www.youtube.com/embed/t_uR01Dx9Mk", length: 3)
exercise1.save

exercise2 = Exercise.new(category: "neck", video_url: "https://www.youtube.com/embed/XtHfEI5DUE0", length: 5)
exercise2.save

exercise3 = Exercise.new(category: "upper", video_url: "https://www.youtube.com/embed/XeXz8fIZDCE", length: 8)
exercise3.save

exercise4 = Exercise.new(category: "upper", video_url: "https://www.youtube.com/embed/U3DParHgSMc", length: 4)
exercise4.save

exercise5 = Exercise.new(category: "lower", video_url: "https://www.youtube.com/embed/2VuLBYrgG94", length: 10)
exercise5.save

exercise6 = Exercise.new(category: "lower", video_url: "https://www.youtube.com/embed/3Z2fZ7TCBfw", length: 2)
exercise6.save


program_exercise = ProgramExercise.new(exercise: exercise1, program: program1)
program_exercise.save

#creating some questions/answers for the knowledge page

question1 = Question.new(content: "What position is best for your back when you sleep? On the back or on one side with the knees flexed toward the chest?")
question1.save!
question2 = Question.new(content: "Which of these sports can cause dangerous back injuries? Swimming or volleyball?")
question2.save!
question3 = Question.new(content: "Disks cushion vertebrae in the back. They are made of bones or cartilage?")
question3.save!
# question5 = Question.new(content: "Which of these is a significant risk factor for backache? Being overweight or beeing short?")
# question5.save!
# question6 = Question.new(content: "Which of these measures will help a backache? Several days of bed rest or massage and ice?")
# question6.save!
# question7 = Question.new(content: "How should you lift a heavy object? Bend from the waist or squat, then lift" )
# question7.save!
# question8 = Question.new(content: "What are the warning signs of a herniated disk? Shooting back pain when you cough, with numbness and lower back pain or shouder pain? ")
# question8.save!




answer1 = Answer.new(content: "On one side with the knees flexed toward the chest", question: question1, correct: true)
answer1.save!
answer2 = Answer.new(content: "On the back with only one pillow behind the head and another one under the knees", question: question1, correct: false)
answer2.save!
answer3 = Answer.new(content: "swimming, because it seeks too many muscles at the same time", question: question2, correct: false )
answer3.save!
answer4 = Answer.new(content: "Volleyball as it can gives several repeated traumas", question: question2, correct: true)
answer4.save!
answer5 = Answer.new(content: "Cartilage.Ligaments encase the disk", question: question3, correct: true )
answer5.save!
answer6 = Answer.new(content: "Bones. ligaments and cartilage encase the disk", question: question3, correct: false)
answer6.save!

article1 = Article.new(title: "Lower back pain in your daily life", category: "lower back", soustitre: "Lower back pain in your common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article1.save!

article2 = Article.new(title: "Back pain in your daily life", category: "for you", soustitre: "Having Back pain in your daily life is very common and can have several causes you should know about. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is lower back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article2.save!

article3 = Article.new(title: "Neck pain in your daily life", category: "neck", soustitre: "Neck pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is neck back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article3.save!

article4 = Article.new(title: "Shoulder pain in your daily life ", category: "shoulder", soustitre: "Shoulder pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is shoulder pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article4.save!

article5 = Article.new(title: "Lower back pain in the morning", category: "lower back", soustitre: "Lower back pain in the morning is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article5.save!

article6 = Article.new(title: "Back pain after standing too long", category: "for you", soustitre: "Back pain afer standing too long, like in museum for instance, is very common and you shouldn't worry too much. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is lower back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article6.save!

article7 = Article.new(title: "Neck pain at your desk", category: "neck", soustitre: "Neck pain while we are working at our desk is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is neck back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article7.save!

article8 = Article.new(title: "Shoulder pain in the morning", category: "shoulder", soustitre: "Shoulder pain in the morning is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is shoulder pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article8.save!

article9 = Article.new(title: "Lower back pain after sport", category: "lower back", soustitre: "Lower back pain after sport. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article9.save!

article10 = Article.new(title: "Neck pain in the morning", category: "neck", soustitre: "Neck pain in the morning is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is neck back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article10.save!

article11 = Article.new(title: "Shoulder pain after repeated moves", category: "shoulder", soustitre: "Shoulder pain after repeated moves is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is shoulder pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article11.save!

article12 = Article.new(title: "back pain when you cough", category: "for you", soustitre: "Having back pain when you cough is very serious and should incite you to see a physician. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Pain often gets better with rest, physical therapy and medication. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

    Pain can range from mild to severe. In some cases, pain can make it difficult or impossible to walk, sleep, work or do everyday activities.

    Usually, lower back pain gets better with rest, pain relievers and physical therapy (PT). Cortisone injections and hands-on treatments (like osteopathic or chiropractic manipulation) can relieve pain and help the healing process. Some back injuries and conditions require surgical repair.", h2: "How common is lower back pain?", paragraph2: "Around four out of five people have lower back pain at some point in their lives. It’s one of the most common reasons people visit healthcare providers.

    Some people are more likely to have lower back pain than others. Risk factors for lower back pain include:

        Age: People over 30 have more back pain. Disks (soft, rubbery tissue that cushions the bones in the spine) wear away with age. As the disks weaken and wear down, pain and stiffness can result.
        Weight: People have overweight/obesity or carry extra weight are more likely to have back pain. Excess weight puts pressure on joints and disks.
        Overall health: Weakened abdominal muscles can’t support the spine, which can lead to back strains and sprains. People who smoke, drink alcohol excessively or live a sedentary lifestyle have a higher risk of back pain.
        Occupation and lifestyle: Jobs and activities that require heavy lifting or bending can increase the risk of a back injury.
        Structural problems: Severe back pain can result from conditions, such as scoliosis, that change spine alignment.
        Disease: People who have a family history of osteoarthritis, certain types of cancer and other disease have a higher risk of low back pain.
        Mental health: Back pain can result from depression and anxiety.
    ", h3: "What are the symptoms of lower back pain?", paragraph3: "Symptoms of lower back pain can come on suddenly or appear gradually. Sometimes, pain occurs after a specific event, such as bending to pick something up. Other times, you may not know what caused the pain.

    Pain may be sharp or dull and achy, and it may radiate to your bottom or down the back of your legs (sciatica). If you strain your back during an activity, you may hear a “pop” when it happened. Pain is often worse in certain positions (like bending over) and gets better when you lie down.

    Other symptoms of lower back pain include:

        Stiffness: It may be tough to move or straighten your back. Getting up from a seated position may take a while, and you might feel like you need to walk or stretch to loosen up. You may notice decreased range of motion.
        Posture problems: Many people with back pain find it hard to stand up straight. You may stand “crooked” or bent, with your torso off to the side rather than aligned with your spine. Your lower back may look flat instead of curved.
        Muscle spasms: After a strain, muscles in the lower back can spasm or contract uncontrollably. Muscle spasms can cause extreme pain and make it difficult or impossible to stand, walk or move.
    ", h4: "What causes lower back pain?", paragraph4: "Many injuries, conditions and diseases can cause lower back pain. They include:

    Strains and sprains: Back strains and sprains are the most common cause of back pain. You can injure muscles, tendons or ligaments by lifting something too heavy or not lifting safely. Some people strain their back by sneezing, coughing, twisting or bending over.
    Fractures: The bones in the spine can break during an accident, like a car crash or a fall. Certain conditions (such as spondylolysis or osteoporosis) increase the risk of fractures.
    Disk problems: Disks cushion the vertebrae (small spinal bones). Disks can bulge from their position in the spine and press on a nerve. They can also tear (herniated disk). With age, disks can get flatter and offer less protection (degenerative disk disease).
    Structural problems: A condition called spinal stenosis happens when the spinal column is too narrow for the spinal cord. Something pinching the spinal cord can cause severe sciatic nerve pain and lower back pain. Scoliosis (curvature of the spine) can lead to pain, stiffness and difficulty moving.
    Arthritis: Osteoarthritis is the most common type of arthritis to cause lower back pain. Ankylosing spondylitis causes lower back pain, inflammation and stiffness in the spine.
    Disease: Spine tumors, infections and several types of cancer can cause back pain. Other conditions can cause back pain, too. These include kidney stones and abdominal aortic aneurysm.
    Spondylolisthesis: This condition causes the vertebrae in the spine to slip out of place. Spondylolisthesis leads to low back pain and often leg pain as well.
    ")
article12.save!
