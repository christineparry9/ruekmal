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
Program.destroy_all

workplace = Workplace.new(name: "Microsoft")
workplace.save
program1 = Program.create(name: "Back pain", standing_points_goal: 120, standing_goal: 120, program_length: 5, image: "undraw_proud.png")
program2 = Program.create(name: "Core Strength", standing_points_goal: 120, standing_goal: 180, program_length: 10, image: "undraw_hero.png")
program3 = Program.create(name: "Neck & Shoulders", standing_points_goal: 120, standing_goal: 150, program_length: 15, image: "undraw_office.png")
program4 = Program.create(name: "Mindfulness", standing_points_goal: 120, standing_goal: 240, program_length: 30, image: "undraw_mindfulness.png")
program5 = Program.create(name: "Flexibility", standing_points_goal: 120, standing_goal: 150, program_length: 25, image: "undraw_workout.png")
program6 = Program.create(name: "Full Experience", standing_points_goal: 120, standing_goal: 180, program_length: 50, image: "undraw_personal_trainer.png")

user1 = User.new(avatar: "https://kitt.lewagon.com/placeholder/users/cveneziani", number_of_points: 22, first_name: "Christine", program: program1, workplace: workplace, email: "christine@test.com", password: "testtest", password_confirmation: "testtest")
user1.save!

user2 = User.new(avatar: "https://kitt.lewagon.com/placeholder/users/sarahlafer", number_of_points: 25, first_name: "Lena", program: program1, workplace: workplace, email: "lena@test.com", password: "testtest", password_confirmation: "testtest")
user2.save!
p user2

user3 = User.new(avatar: "https://avatars.githubusercontent.com/u/68972820?v=4", number_of_points: 60, first_name: "Constance", program: program1, workplace: workplace, email: "constance@test.com", password: "testtest", password_confirmation: "testtest")
user3.save!

user4 = User.new(avatar: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1610540256/mbf03tpkmvwrgufdaezz.jpg", number_of_points: 5, first_name: "Dareos", program: program1, workplace: workplace, email: "dareos@test.com", password: "testtest", password_confirmation: "testtest")
user4.save!

user5 = User.new(avatar: "https://kitt.lewagon.com/placeholder/users/arthur-littm", number_of_points: 20, first_name: "Domenico", program: program1, workplace: workplace, email: "domenico@test.com", password: "testtest", password_confirmation: "testtest")
user5.save!

user6 = User.new(avatar: "https://kitt.lewagon.com/placeholder/users/krokrob", number_of_points: 120, first_name: "Arbi", program: program1, workplace: workplace, email: "arbi@test.com", password: "testtest", password_confirmation: "testtest")
user6.save!

exercise1 = Exercise.new(category: "lower", video_url: "https://www.youtube.com/embed/t_uR01Dx9Mk", length: 3, title: "4 Best lower back stretches")
exercise1.save

exercise2 = Exercise.new(category: "neck", video_url: "https://www.youtube.com/embed/LkUGx1GtJHE", length: 1, title: "Daily stretches for neck pain")
exercise2.save

exercise3 = Exercise.new(category: "lower", video_url: "https://www.youtube.com/embed/XeXz8fIZDCE", length: 15, title: "Yoga for lower back pain")
exercise3.save

exercise4 = Exercise.new(category: "lower", video_url: "https://www.youtube.com/embed/U3DParHgSMc", length: 11, title: "Relieve lower back pain")
exercise4.save

exercise5 = Exercise.new(category: "upper", video_url: "https://www.youtube.com/embed/2VuLBYrgG94", length: 5, title: "Back pain relief exercises")
exercise5.save

exercise6 = Exercise.new(category: "lower", video_url: "https://www.youtube.com/embed/3Z2fZ7TCBfw", length: 3, title: "Most effective psoas release")
exercise6.save

program_exercise = ProgramExercise.new(exercise: exercise2, program: program3)
program_exercise.save

#creating some questions/answers for the knowledge page

question1 = Question.new(content: "What position is best for your back when you sleep?")
question1.save!
question2 = Question.new(content: "Which of these sports can cause dangerous back injuries?")
question2.save!
question3 = Question.new(content: "Disks cushion vertebrae in the back. What are they made of?")
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
answer3 = Answer.new(content: "Swimming, because it seeks too many muscles at the same time", question: question2, correct: false )
answer3.save!
answer4 = Answer.new(content: "Volleyball as it can gives several repeated traumas", question: question2, correct: true)
answer4.save!
answer5 = Answer.new(content: "Cartilage - Ligaments encase the disk", question: question3, correct: true )
answer5.save!
answer6 = Answer.new(content: "Bones - Ligaments and cartilage encase the disk", question: question3, correct: false)
answer6.save!

article1 = Article.new(title: "Lower back pain in your daily life", category: "lower back", soustitre: "Lower back pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://media.istockphoto.com/id/1201633797/photo/black-woman-holding-her-hand-behind-his-back.jpg?s=612x612&w=0&k=20&c=k3zHcLoGxSB9lTbzEO9G5UBJAvR6OZZMKB5xF3GPvm4=")
article1.save!

article2 = Article.new(title: "Having back pain in your daily life", category: "for you", soustitre: "Back pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is lower back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://media.istockphoto.com/id/1198615395/photo/back-view-of-afro-woman-rubbing-her-neck-and-loins.jpg?s=612x612&w=0&k=20&c=0az2-mvWpTKIlEZ9s2zEmSnHlI6VvhYtb5xuw8FQ0b0=")
article2.save!

article3 = Article.new(title: "Having neck pain in your daily life", category: "neck", soustitre: "Neck pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is neck back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "data:image/jpeg;base64,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")
article3.save!

article4 = Article.new(title: "Shoulder pain in your daily life ", category: "shoulder", soustitre: "Shoulder pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is shoulder pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://media.istockphoto.com/id/1275745902/photo/japanese-women-businesswoman-whose-shoulders-hurt-from-working-from-home.jpg?s=612x612&w=0&k=20&c=F1dBLXeJ1Jed6uCiH01nWe3Np5twBJ4cDGWo_kkiT_8=")
article4.save!

article5 = Article.new(title: "Lower back pain in the morning", category: "lower back", soustitre: "Lower back pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://prairiespine.com/wp-content/uploads/2021/02/Why-Does-My-Back-Hurt-in-the-Morning-scaled.jpg")
article5.save!

article6 = Article.new(title: "Feeling back pain at your desk", category: "for you", soustitre: "Back pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is lower back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://media.istockphoto.com/id/842597094/photo/businesswoman-with-pain-in-back.jpg?s=612x612&w=0&k=20&c=VZxuaivcXwbIwzbRmuvxHAcg1erO09Jd2HTBdXdnsmA=")
article6.save!

article7 = Article.new(title: "Feeling neck pain at your desk", category: "neck", soustitre: "Neck pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is neck back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://media.istockphoto.com/id/830531726/photo/tired-businesswoman-holding-her-nape.jpg?s=612x612&w=0&k=20&c=8EZ9bjcmUiwq46_fdlDKJCycwjeJzk1W1F4PWoJGn18=")
article7.save!

article8 = Article.new(title: "Shoulder pain in the morning", category: "shoulder", soustitre: "Shoulder pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is shoulder pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://img.freepik.com/free-photo/woman-doing-having-shoulder-pain_23-2148784635.jpg?w=2000")
article8.save!

article9 = Article.new(title: "Having lower back pain after sport", category: "lower back", soustitre: "Lower back pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "data:image/jpeg;base64,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")
article9.save!

article10 = Article.new(title: "Having neck pain in the morning", category: "neck", soustitre: "Neck pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is neck back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://media.istockphoto.com/id/1129651551/photo/woman-suffering-from-neck-pain-waking-up-in-the-morning.jpg?s=612x612&w=0&k=20&c=V0S4v4dMg43BQ82KRlXOycy5Q64U5EWoLNP5Lz74pQA=")
article10.save!

article11 = Article.new(title: "Shoulder pain after repeated moves", category: "shoulder", soustitre: "Shoulder pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is shoulder pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDjWjZG30lrn8jZAn9FIjN18hhsU8f3I9qzg&usqp=CAU")
article11.save!

article12 = Article.new(title: "Having back pain when you cough", category: "for you", soustitre: "This could be serious. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://cdn-prod.medicalnewstoday.com/content/images/articles/325/325707/man-coughing-in-the-street-who-may-have-lower-back-pain.jpg")
article12.save!

article13 = Article.new(title: "Upper back pain in the morning", category: "upper back", soustitre: "Upper back pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is neck back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://www.handsots.com/wp-content/uploads/2020/01/AdobeStock_158486265_copy.jpeg")
article13.save!

article14 = Article.new(title: "Upper back pain at your desk", category: "upper back", soustitre: "Upper back pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is shoulder pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://images.healthshots.com/healthshots/en/uploads/2022/08/09184108/wfh-370x207.jpg")
article14.save!

article15 = Article.new(title: "Having upper back pain after sport", category: "upper back", soustitre: "Upper back pain is very common. It can result from a strain (injury) to muscles or tendons in the back. Other causes include arthritis, structural problems and disk injuries. Reduce your risk of low back pain by keeping at a healthy weight and staying active.", h1: "What is back pain?", paragraph1: "Low back pain can result from many different injuries, conditions or diseases — most often, an injury to muscles or tendons in the back.

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
    ", image: "https://www.westhoustonchiropractor.com/wp-content/uploads/2020/03/Upper-Back-Pain.jpg")
article15.save!
