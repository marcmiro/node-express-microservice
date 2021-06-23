# ANSWERS

#### How long did it take to finish the test?
It took to me near to *5 hours* dedicated to achieve all the objectives.

---

#### If you had more time, how could you improve your solution?
With more time, I would add some health checks on the API and, also, some tweaks on the Nginx part to add more security or good practises (headers or CORS).

---

#### What changes would you do to your solution to be deployed in a production environment?
I would add the following tasks to the backlog:
- Add the good certs for production without the bash part.
- Use Kubernetes as container managing solution.
- Create a CI/CD with some tests to the image, code, etc...
- Go with the good Git usage with Pull Request and branches.

---

#### Why did you choose this language over others?
I chose Nodejs with Express thinking on 2 reasons:
1. Actually, this language is usually used with API REST for it's fast response and scalability on non-highcpu processes.
2. I never programmed a NodeJS backend so I wanted to profit this test to use something new.

---

#### What was the most challenging part and why?
The main challenge for me was the HTTPS part and more preciselly the SSL creation part. As the self-signed is based on each host, I had to investigate how to do it automatically (I never did it before).
